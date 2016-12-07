var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');
var execBtn = document.getElementById('execute');

var courseDropdown = document.getElementById('courseDropdown');
var courseDropdownLabel = document.getElementById('courseDropdownLabel');

var resourceDropdown = document.getElementById('resourceDropdown');
var resourceDropdownLabel = document.getElementById('resourceDropdownLabel');


var worker = new Worker("worker.sql.js"); // Start the worker in which sql.js will run
worker.onerror = error;

worker.postMessage({action:'open'}); // Open a database


/* Connect to the HTML element we 'print' to */
function print(text) 
{
    outputElm.innerHTML = text.replace(/\n/g, '<br>');
}

/* Display errors, if any */
function error(e) 
{
    console.log(e);
	errorElm.style.height = '2em';
	errorElm.textContent = e.message;
}


function clearErrors() 
{
    errorElm.style.height = '0';
}


/* 
 *Load a db from a file 
 */
//dbFileElm.onchange = function()
window.onload = function()
{
    var f = dbFileElm.files[0];
    
	var r = new FileReader();
    
	r.onload = function() 
    {
		try 
        {
			worker.postMessage({action:'open',buffer:r.result}, [r.result]);
            
            document.getElementById("selectQuery").disabled=false;
		}
		catch(exception) 
        {
			worker.postMessage({action:'open',buffer:r.result});
		}
	}
    
	r.readAsArrayBuffer(f);
}


/* 
 * Executes query based upon user dropdown selection 
 */
function setQuery(val) 
{  
    clearErrors(); 
    
    outputElm.innerHTML = ""; // clear output
    
    var dropdown = document.getElementById("selectQuery"); // get handle to query dropdown
    
    var selection = dropdown.options[dropdown.selectedIndex].id; // get handle to 
    
    removePreviousFormIfExists();  
    
    switch(selection)
    {
        case "browse":
            createDropdown(courseDropdown, courseDropdownLabel, "<strong>Select course: </strong>", "dropdown1", selectResource);
            populateCourseDropdown(dropdown1);
            break;
        case "query1":
            execBtn.addEventListener("click", query1); 
            getParameter(selection);
            break;
        case "query2":
            execBtn.addEventListener("click", query2); 
            getParameter(selection);
            break;
        case "query3":
            execBtn.addEventListener("click", query3);  
            getParameter(selection);
            break;
        case "query4":
            execBtn.addEventListener("click", query4); 
            getParameter(selection);
            break;
        case "query5":
            execBtn.addEventListener("click", query5);  
            getParameter(selection);
            break;
        default:
            break;
    }   
}


function removePreviousFormIfExists()
{
    var form = document.getElementById("form1");
    
    if (typeof(form) != 'undefined' && form != null)
        form.remove();
}


/*
 * Create form element for user to input query parameters
 */
function getParameter(selection)
{
    var form = createFormElement();
    
    switch(selection)
    {
        case "query1":
            labelForm(form, "Enter major ID: ");
            addInputElementToForm(form, "MajorID", "BCOS");
            break;
        case "query2":
            labelForm(form, "Enter department name: ");
            addInputElementToForm(form, "DepartmentID", "Computer Science");
            break;
        case "query3":
            labelForm(form, "Enter class ID: ");
            addInputElementToForm(form, "MajorID", "COMP-1000");
            break;
        case "query4":
            labelForm(form, "Enter course ID: ");
            addInputElementToForm(form, "MajorID", "COMP-2000");
            break;
        case "query5":
            labelForm(form, "Enter software name: ");
            addInputElementToForm(form, "MajorID", "Eclipse");
        default:
            break;
    }
    
    addFormToHTML(form);
    
    document.getElementById("execute").disabled=false; // enable execute button
}


function createFormElement()
{   
    var form = document.createElement("form");
    
    form.setAttribute('id', "form1");
    
    return form;
}

function labelForm(form, label)
{
    form.appendChild(document.createElement("br"));
    
    var text = document.createElement("strong");
    
    text.innerHTML = label;
    
    form.appendChild(text);
}

function addInputElementToForm(form, name, value)
{   
    var input = document.createElement("input"); 
    
    input.setAttribute('type', "text");
    input.setAttribute('name', name);
    input.setAttribute('value', value);
    
    form.appendChild(input);
}

function addFormToHTML(form)
{   
    var element = document.getElementById("param");
    
    element.appendChild(form);  
}


function createDropdown(parentElement, parentElementLabel, label, id, behavior)
{
    var dropdown = document.createElement("select");
    
    dropdown.id = id;
    
    dropdown.onchange = behavior;
    
    labelDropdown(parentElementLabel, label);
    
    parentElement.appendChild(dropdown);
}

function labelDropdown(divLabel, text)
{
    divLabel.appendChild(document.createElement("br")); // create new line
    
    var dropdownLabel = document.createElement("label"); // create label element
    
    dropdownLabel.innerHTML = text; // set its inner HTML

    divLabel.appendChild(dropdownLabel); // append it to the div
}

function populateCourseDropdown(dropdown1)
{
    addOption(dropdown1, "--");
    addOption(dropdown1, "COMP-1000");
    addOption(dropdown1, "COMP-1100");
    addOption(dropdown1, "COMP-2000");
    addOption(dropdown1, "ELEC-3150");
    addOption(dropdown1, "ELEC-2850");
    addOption(dropdown1, "MECH-1000");
}

function populateResourceDropdown(dropdown2)
{
    addOption(dropdown2, "--");
    addOption(dropdown2, "eBooks");
    addOption(dropdown2, "Facillitated Study Groups");
    addOption(dropdown2, "Online Tutorials");
    addOption(dropdown2, "Tutors");
}

function addOption(dropdown, text)
{
    var option = document.createElement("option");
    
    option.innerHTML = text;
    
    dropdown.appendChild(option);
}

function selectResource()
{
    createDropdown(resourceDropdown, resourceDropdownLabel, "<strong>Select resource: </strong>", "dropdown2", courseQuery); 
    populateResourceDropdown(dropdown2);
}

function courseQuery()
{
    var dropdown = document.getElementById("dropdown1");
    
    var course = dropdown.options[dropdown.selectedIndex].text;
    
    
    dropdown = document.getElementById("dropdown2");
    
    var resource = dropdown.options[dropdown.selectedIndex].text;
    
    switch(resource)
    {
        case "eBooks":
            getEbooks(course);
            break;
        case "Tutors":
            getTutors(course);
            break;
        case "Online Tutorials":
            getOnlineTutorials(course);
            break;
        case "Facillitated Study Groups":
            getFacillitatedStudyGroups(course);
            break
        default: 
            break;
    }
}

function getEbooks(course)
{
    var query = "SELECT Name, URL, ISBN, ClassID FROM Ebook WHERE Ebook.ClassID=\"" + course +"\" ";
    query += "ORDER BY Name";
    
    execute(query);
}

function getTutors(course)
{
    var query = "SELECT Student.FName, Student.LName, TutorHours.Weekday, TutorHours.StartTime_Str, TutorHours.EndTime_Str ";
    query += "FROM Student INNER JOIN Tutor ON Student.StudentID=Tutor.StudentID ";
    query += "INNER JOIN TutorHours ON Tutor.StudentID=Tutor.StudentID ";
    query += "WHERE Tutor.ClassID=\"" + course +"\" ";
    query += "GROUP BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime_Str, TutorHours.EndTime_Str ";
    query += "ORDER BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime_Str, TutorHours.EndTime_Str";
    
    execute(query);
}

function getOnlineTutorials(course)
{
    var query = "SELECT Title, ParentSite AS Host, URL FROM OnlineTutorial "; 
    query += "WHERE OnlineTutorial.ClassID=\"" + course +"\" ORDER BY Title";
    
    execute(query);
}

/*
 * Retrieves user-input parameter, 
 * executes query,
 * and disables the execute button.
 */
function query1()
{   
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Student.FName as First_Name, Student.LName as Last_Name, TutorHours.Weekday, ";  
    query += "TutorHours.StartTime, TutorHours.EndTime, Class.ClassName ";
    query += "FROM Tutor INNER JOIN Class ON Tutor.ClassID = Class.ClassID ";
    query += "INNER JOIN Department ON Class.DepartmentID = Department.DepartmentID ";
    query += "INNER JOIN Major ON Department.DepartmentID = Major.DepartmentID ";
    query += "INNER JOIN Student ON Tutor.StudentID = Student.StudentID ";
    query += "INNER JOIN TutorHours ON TutorHours.StudentID = Tutor.StudentID ";
    query += "WHERE Major.MajorID=\"" + param + "\" ";
    query += "ORDER BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime;";

    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query1); 
}

function query2()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.ClassName, Count(DISTINCT Ebook.ISBN) as eBooks_Available ";
    query += "FROM Ebook INNER JOIN Class ON Class.ClassID = Ebook.ClassID ";
    query += "INNER JOIN Department ON Class.DepartmentID = Department.DepartmentID ";
    query += "INNER JOIN Major ON Major.DepartmentID = Department.DepartmentID ";
    query += "Where Department.DepartmentName LIKE \"%" + param + "%\" ";
    query += "GROUP BY Class.ClassID ";
    query += "Order By eBooks_Available DESC, Class.ClassName ";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query2); 
}

function query3()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Student.FName,Student.LName, TutorHours.Weekday, TutorHours.StartTime, TutorHours.EndTime ";
    query += "FROM Tutor JOIN Class on Tutor.ClassID = Class.ClassID ";
    query += "Inner Join Faculty on Faculty.FacultyID = Class.FacultyID ";
    query += "Inner Join OfficeHours on Faculty.FacultyID = OfficeHours.FacultyID ";
    query += "Inner Join TutorHours on TutorHours.StudentID = Tutor.StudentID ";
    query += "Inner Join Student on Student.StudentID = Tutor.StudentID ";
    query += "WHERE (Class.ClassName=\"" + param + "\" ";
    query += "AND (TutorHours.WeekDay = OfficeHours.Weekday AND OfficeHours.StartTime >= TutorHours.EndTime ";
    query += "AND OfficeHours.EndTime <= TutorHours.StartTime) OR (TutorHours.Weekday != OfficeHours.WeekDay)) ";
    query += "GROUP BY Tutor.StudentID, TutorHours.Weekday ";
    query += "ORDER BY Student.LName, TutorHours.Weekday, TutorHours.StartTime; ";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query3); 
}

function query4()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT OnlineTutorial.Title, OnlineTutorial.URL ";
    query += "FROM OnlineTutorial INNER JOIN Class ON OnlineTutorial.ClassID = Class.ClassID ";
    query += "Where Class.ClassID=\"" + param + "\" OR OnlineTutorial.Title=\"trees\" OR ";
	query += "OnlineTutorial.Title LIKE \"%stack%\" OR OnlineTutorial.Title LIKE \"%binary tree%\" OR ";
	query += "OnlineTutorial.Title LIKE \"%linked list%\" OR OnlineTutorial.Title LIKE \"%trees%\" ";
    query += "Order By OnlineTutorial.Title, OnlineTutorial.TutorialID ";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query4); 
}


function query5()
{   
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.ClassName, Faculty.FName AS Professor_FirstName, ";
    query += "Faculty.LName AS Professor_LastName, Faculty.Rating AS RateMyProfessor_Rating ";
    query += "FROM Faculty INNER JOIN Class ON Faculty.facultyID = Class.FacultyID ";
    query += "INNER JOIN Software ON Software.ClassID = Class.ClassID ";
    query += "WHERE Faculty.Rating >= 3 AND Software.Name=\"" + param +"\" ";
    query += "ORDER BY Faculty.Rating DESC, Class.ClassName";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query5); 
}


function removeForm()
{
    document.getElementById("param").removeChild(document.getElementById("form1")); // remove form element we just created
    
    document.getElementById("execute").disabled=true; // disable execute button
}

/* 
 * Run the query in the database 
 */
function execute(query) 
{
	worker.onmessage = function(event) 
    {
		var results = event.data.results;

		outputElm.innerHTML = "";
        
		for (var i = 0; i < results.length; i++) 
        {
			outputElm.appendChild(tableCreate(results[i].columns, results[i].values));
		}
        
        if (outputElm.textContent == "") 
            outputElm.textContent = "Paramter not found";
	}
    
	worker.postMessage({action:'exec', sql:query});
    
	outputElm.textContent = "Fetching results...";
}


/* 
 * Create an HTML table to display results 
 */
var tableCreate = function() 
{
    function valconcat(vals, tagName) 
    {
        if (vals.length === 0)
            return '';    
        
        var open = '<'+tagName+'>', close='</'+tagName+'>';
        
        return open + vals.join(close + open) + close;
    }
  
    return function (columns, values) 
    {
        var tbl  = document.createElement('table');
        
        var html = '<thead>' + valconcat(columns, 'th') + '</thead>';
        
        var rows = values.map(function(v) { return valconcat(v, 'td'); });
        
        html += '<tbody>' + valconcat(rows, 'tr') + '</tbody>';
        
	    tbl.innerHTML = html;
        
        return tbl;
    }
}();