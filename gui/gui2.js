
/***************************** Global DOM Handles ******************************/

var outputElm = document.getElementById("output");
var execBtn = document.getElementById("execute");
var queryDropdown = document.getElementById("selectQuery"); // get handle to query dropdown

var div1 = document.getElementById("courseDropdown");            
var div2 = document.getElementById("resourceDropdown");              
var div3 = document.getElementById("param");  

/*******************************************************************************/

/***************************** Backend preparation *****************************/

var sql = window.SQL;

var db = new sql.Database();

/* 
 * loads db on page load, and allows user to select a query
 */ 
window.onload = function()
{
    loadDB();
    document.getElementById("selectQuery").disabled=false; // enable query dropdown
}

/********************************************************************************/

/***************************** Default Prompt ***********************************/

/* 
 * Executes query based upon queryDropdown value
 */
function setQuery() 
{   
    clearAllDynamicElements();
    
    outputElm.innerHTML = "Results will be displayed here"; // clear output
    
    var selectedQuery = queryDropdown.options[queryDropdown.selectedIndex].id;   
    
    switch(selectedQuery)
    {
        case "browse":
            selectCoursePrompt();
            break;
        case "query1":
            execBtn.addEventListener("click", query1); 
            getParameter(selectedQuery);
            break;
        case "query2":
            execBtn.addEventListener("click", query2); 
            getParameter(selectedQuery);
            break;
        case "query3":
            execBtn.addEventListener("click", query3);  
            getParameter(selectedQuery);
            break;
        case "query4":
            execBtn.addEventListener("click", query4); 
            getParameter(selectedQuery);
            break;
        case "query5":
            execBtn.addEventListener("click", query5);  
            getParameter(selectedQuery);
            break;
        default:
            break;
    }   
}


/* 
 * removes all query-specific elements we created on previous query
 */ 
function clearAllDynamicElements()
{
    div1.innerHTML = "";
    div2.innerHTML = "";
    div3.innerHTML = "";
}

/**********************************************************************************/

/********************************* Basic queries **********************************/

/*
 * calls appropriate query based on course and resource
 */
function courseQuery()
{
    var dropdown = document.getElementById("dropdown1");
    dropdown.onchange=courseQuery; // allows user to check multiple courses for each element
    
    var course = dropdown.options[dropdown.selectedIndex].text;
    
    dropdown = document.getElementById("dropdown2");
    var resource = dropdown.options[dropdown.selectedIndex].text;
    
    switch(resource)
    {
        case "eBooks":
            getEbooks(course);
            break;
        case "Facillitated Study Groups":
            getFacillitatedStudyGroups(course);
            break;
        case "Tutors":
            getTutors(course);
            break;
        case "Office Hours":
            getOfficeHours(course);
            break;
        case "Online Tutorials":
            getOnlineTutorials(course);
            break;
        case "Software":
            getSoftware(course);
            break;
        case "Course Reserve Tectbooks":
            getCourseReserves(course);
            break
        default: 
            break;
    }
}


function getCourseReserves(course)
{
    var query = "SELECT * FROM Textbook WHERE Textbook.ClassID=\"" + course +"\" ";
    
    execute(query);
}

function getEbooks(course)
{
    var query = "SELECT Name, URL, ISBN FROM Ebook WHERE Ebook.ClassID=\"" + course +"\" ";
    query += "ORDER BY Name";

    execute(query);
}

function getFacillitatedStudyGroups(course)
{
    var query = "SELECT * FROM FSG WHERE FSG.ClassID=\"" + course +"\" ";

    execute(query);
}

function getOfficeHours(course)
{
//    var query = "SELECT OfficeHours.Weekday ";
//    query += "FROM OfficeHours INNER JOIN Faculty ON Faculty.FacultyID=OfficeHours.FacultyID ";
//    query += "INNER JOIN Class ON Class.FacultyID=Faculty.FacultyID"
//    query += "WHERE Class.ClassID=\"" + course +"\" ";
    
    execute(query);
}

function getOnlineTutorials(course)
{
    var query = "SELECT Title, ParentSite AS Host, URL FROM OnlineTutorial "; 
    query += "WHERE OnlineTutorial.ClassID=\"" + course +"\"";
    
    execute(query);
}

function getSoftware(course)
{
    var query = "SELECT Name, URL FROM Software WHERE Software.ClassID=\"" + course +"\"";
    
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

/***************************************************************************************************/

/**************************** DOM manipulation for advanced queries ********************************/

/*
 * creates and populates course dropdown
 */
function selectCoursePrompt()
{
    createDropdown(courseDropdown, "Select a course:  ", "dropdown1", selectResourcePrompt);
    populateCourseDropdown(dropdown1);
}


/*
 * creates and populates resource dropdown
 */
function selectResourcePrompt()
{
    createDropdown(resourceDropdown, "Select a resource:  ", "dropdown2", courseQuery); 
    populateResourceDropdown(dropdown2);
}


/*
 * creates HTML select element
 */
function createDropdown(parentDiv, text, dropdownId, behavior)
{
    parentDiv.appendChild(document.createElement("br"));
    
    label = document.createElement("strong");
    label.textContent = text;
    parentDiv.appendChild(label);
    
    var dropdown = document.createElement("select");
    dropdown.id = dropdownId;
    dropdown.onchange = behavior;
    parentDiv.appendChild(dropdown);
}


/* 
 * populates dropdown with all available courses
 */
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


/*
 * populates dropdown with all available resources
 */
function populateResourceDropdown(dropdown2)
{
    addOption(dropdown2, "--");
    addOption(dropdown2, "Course Reserve Textbooks");
    addOption(dropdown2, "eBooks");
    addOption(dropdown2, "Facillitated Study Groups");
    addOption(dropdown2, "Office Hours");
    addOption(dropdown2, "Online Tutorials");
    addOption(dropdown2, "Software");
    addOption(dropdown2, "Tutors");
}


/*
 * populates dropdown with all available resources
 */
function addOption(dropdown, text)
{
    var option = document.createElement("option");
    option.textContent = text;
    dropdown.appendChild(option);
}

/***************************************************************************************************/

/********************************* Advanced queries **********************************/

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

/***************************************************************************************************/

/**************************** DOM manipulation for advanced queries ********************************/

function createFormElement()
{   
    var form = document.createElement("form");
    form.setAttribute("id", "form1");
    
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
    
    input.setAttribute("type", "text");
    input.setAttribute("name", name);
    input.setAttribute("value", value);
    
    form.appendChild(input);
}

function addFormToHTML(form)
{   
    var element = document.getElementById("param");
    element.appendChild(form);  
}

function removeForm()
{
    document.getElementById("param").removeChild(document.getElementById("form1")); // remove form element we just created
    document.getElementById("execute").disabled=true; // disable execute button
}

/***************************************************************************************************/

/*********************************** DB Backend ****************************************************/

/* 
 * sql.js is not well-supported on loading server-side databases
 * to get around this, I'm creating the database on page load
 */
function loadDB()
{
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "./../Academic-Resources.txt", true);

    xhr.onload = function(e) 
    {   
        console.log(xhr.responseText);
        db.run(xhr.responseText); // run the query without returning anything
    };

    xhr.send();
}


/*
 * executes query from global variable
 */
function execute(query)
{
    console.log(query);
    var result = db.exec(query);
    printResult(result);
}


/*
 * prints query result by calling tableCreate()
 */
function printResult(res)
{
    outputElm.innerHTML = "";
    
    for (var i = 0; i < res.length; i++) 
        outputElm.appendChild(tableCreate(res[i].columns, res[i].values));
    
    if (outputElm.textContent == "") 
        outputElm.textContent = "No resources match your search";
}


/* 
 * Create an HTML table to display results 
 */
var tableCreate = function() 
{
    function valconcat(vals, tagName) 
    {
        if (vals.length === 0)
            return "";    
        
        var open = "<"+tagName+">", close="</"+tagName+">";
        return open + vals.join(close + open) + close;
    }
  
    return function (columns, values) 
    {
        var tbl  = document.createElement("table");
        var html = "<thead>" + valconcat(columns, "th") + "</thead>";
        var rows = values.map(function(v){ return valconcat(v, "td"); });
        html += "<tbody>" + valconcat(rows, "tr") + "</tbody>";
	    tbl.innerHTML = html;
        return tbl;
    }
}();

/***************************************************************************************************/