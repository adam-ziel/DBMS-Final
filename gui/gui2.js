/***************************** Global DOM Handles ******************************/

var outputElm = document.getElementById("output");
var execBtn = document.getElementById("execute");
var queryDropdown = document.getElementById("selectQuery"); // get handle to query dropdown

var div1 = document.getElementById("courseDropdown");            
var div2 = document.getElementById("resourceDropdown");              
var div3 = document.getElementById("param");  

/*******************************************************************************/

/***************************** Backend preparation *****************************/

var sql = window.SQL; // links sql.js
var db = new sql.Database();

/* 
 * loads db on page load, and allows user to select a query
 */ 
window.onload = function()
{
    loadDB();
    document.getElementById("selectQuery").disabled=false; // enable query dropdown
    setQuery();
}

/********************************************************************************/

/***************************** Default Prompt ***********************************/

/* 
 * Executes query based upon queryDropdown value
 */
function setQuery() 
{   
    clearAllDynamicElements();
    
    clearAllEventListeners();
    
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

function clearAllEventListeners()
{
    execBtn.removeEventListener("click", query1); 
    execBtn.removeEventListener("click", query2); 
    execBtn.removeEventListener("click", query3); 
    execBtn.removeEventListener("click", query4); 
    execBtn.removeEventListener("click", query5); 
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
        case "Course Reserve Textbooks":
            getCourseReserves(course);
            break
        default: 
            break;
    }
}


function getCourseReserves(course)
{
    var query = "SELECT Name, ISBN, LibraryAvailability AS 'Library Availabilty' ";
    query += "FROM Textbook WHERE Textbook.ClassID=\"" + course +"\" ";
    
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
    var query = "SELECT FSG.Weekday, printf('%s - %s', FSG.StartTime_Str, FSG.EndTime_Str) AS 'Time', ";
    query += "printf('%s %s', FSG.Building, FSG.RoomNumber) as Location, "
    query += "printf('%s %s', Faculty.FName, Faculty.LName) AS 'Faculty Leader' ";
    query += "FROM FSG INNER JOIN Faculty ON FSG.FacultyID=Faculty.FacultyID ";
    query += "WHERE FSG.ClassID=\"" + course +"\" ";
    query += "ORDER BY WeekdayID";

    execute(query);
}

function getOfficeHours(course)
{
    var query = "SELECT printf('%s %s', Faculty.FName, Faculty.LName) AS Professor, ";
    query += "OfficeHours.Weekday, printf('%s %s', Faculty.Building, Faculty.RoomNumber) AS Location ,";
    query += "printf('%s - %s', OfficeHours.StartTime_Str, OfficeHours.EndTime_Str) AS Time "
    query += "FROM OfficeHours INNER JOIN Faculty ON Faculty.FacultyID=OfficeHours.FacultyID ";
    query += "INNER JOIN Class ON Class.FacultyID=Faculty.FacultyID ";
    query += "WHERE Class.ClassID=\"" + course +"\" ";
    query += "ORDER BY OfficeHours.WeekdayID, OfficeHours.StartTime ";
    
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
    var query = "SELECT printf('%s %s', Student.FName, Student.LName) AS 'Student' ,";
    query += "TutorHours.Weekday, ";
    query += "printf('%s - %s', TutorHours.StartTime_Str, TutorHours.EndTime_Str) AS Availability ";
    query += "FROM Student INNER JOIN Tutor ON Student.StudentID=Tutor.StudentID ";
    query += "INNER JOIN TutorHours ON TutorHours.StudentID=Tutor.StudentID ";
    query += "WHERE Tutor.ClassID=\"" + course +"\" ";
    query += "GROUP BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime, TutorHours.EndTime ";
    query += "ORDER BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime, TutorHours.EndTime ";
    
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
    addOption(dropdown1, "CIVE-2000");
    addOption(dropdown1, "CIVE-2200");
    addOption(dropdown1, "CIVE-3000");
    addOption(dropdown1, "CIVE-3000L");
    addOption(dropdown1, "CIVE-3100");
    addOption(dropdown1, "CIVE-3200");
    addOption(dropdown1, "CIVE-3200L");
    addOption(dropdown1, "CIVE-3300");
    addOption(dropdown1, "CIVE-3300L");
    addOption(dropdown1, "CIVE-3500");
    addOption(dropdown1, "CIVE-3800");
    addOption(dropdown1, "CIVE-8000");
    addOption(dropdown1, "CIVE-8200");
    addOption(dropdown1, "CIVE-8400");
    addOption(dropdown1, "CIVE-8500");
    addOption(dropdown1, "CIVE-8550");
    addOption(dropdown1, "COMP-1000");
    addOption(dropdown1, "COMP-1100");
    addOption(dropdown1, "COMP-2000");
    addOption(dropdown1, "COMP-2500");
    addOption(dropdown1, "COMP-3071");
    addOption(dropdown1, "ELEC-2299");
    addOption(dropdown1, "ENGR-1800");
    addOption(dropdown1, "MECH-1000");
    addOption(dropdown1, "MECH-2250");
    addOption(dropdown1, "MECH-3100");
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

function populateDepartmentDropdown(dropdown)
{
    addOption(dropdown, "--");
    addOption(dropdown, "Civil Engineering");
    addOption(dropdown, "Computer Science");
    addOption(dropdown, "Computer Networking");
    addOption(dropdown, "Biomedical Engineering");
    addOption(dropdown, "Mechanical Engineering");
    addOption(dropdown, "Electrical Engineering");
    addOption(dropdown, "Computer Engineering");
    addOption(dropdown, "Electromechanical Engineering");
}

function populateMajorDropdown(dropdown)
{
    addOption(dropdown, "--");
    addOption(dropdown, "BSCE");
    addOption(dropdown, "BCOS");
    addOption(dropdown, "BSCN");
    addOption(dropdown, "BMED");
    addOption(dropdown, "BSME");
    addOption(dropdown, "BSEE");
    addOption(dropdown, "BSCO");
    addOption(dropdown, "BELM");
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
    var form = createFormElement("form1");
    var form2 = createFormElement("form2");
    var slider = createRangeElement("slider1");
    
    switch(selection)
    {
        case "query1":
            createDropdown(div3, "Enter a major: ", "dropdown3", query1);
            populateMajorDropdown(dropdown3);
            break;
        case "query2":
            createDropdown(div3, "Enter a department: ", "dropdown3", query2);
            populateDepartmentDropdown(dropdown3);
            break;
        case "query3":
            createDropdown(div3, "Enter a class: ", "dropdown3", query3);
            populateCourseDropdown(dropdown3);
            break;
        case "query4":
            createDropdown(div3, "Enter a class: ", "dropdown3", "");
            populateCourseDropdown(dropdown3);
            labelElement(form2, "Enter search terms, delimitted by commas:  ");
            addInputElementToForm(form2, "MajorID", "");
            addElementToHTML(form2);
            document.getElementById("execute").disabled=false; // enable execute button
            break;
        case "query5":
            labelElement(form, "Enter software name: ");
            addInputElementToForm(form, "MajorID", "Eclipse");
            div3.innerHTML = "<br><strong>Select desired professor rating: </strong>";
            div3.appendChild(slider);
            labelSlider();
            document.getElementById("execute").disabled=false; // enable execute button
        default:
            break;
    }
    
    addElementToHTML(form);
}

function query1()
{   
    var dropdown = document.getElementById("dropdown3");
    var param = dropdown.options[dropdown.selectedIndex].text;
    
    var query = "";
    
    query += "SELECT printf('%s %s', Student.FName, Student.LName) AS 'Student', TutorHours.Weekday, ";  
    query += "printf('%s - %s', TutorHours.StartTime_Str, TutorHours.EndTime_Str) AS Availability ";
    query += "FROM Tutor INNER JOIN Class ON Tutor.ClassID = Class.ClassID ";
    query += "INNER JOIN Department ON Class.DepartmentID = Department.DepartmentID ";
    query += "INNER JOIN Major ON Department.DepartmentID = Major.DepartmentID ";
    query += "INNER JOIN Student ON Tutor.StudentID = Student.StudentID ";
    query += "INNER JOIN TutorHours ON TutorHours.StudentID = Tutor.StudentID ";
    query += "WHERE Major.MajorID=\"" + param + "\" ";
    query += "GROUP BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime ";
    query += "ORDER BY Student.LName, TutorHours.WeekdayID, TutorHours.StartTime;";

    execute(query);
}

function query2()
{
    var dropdown = document.getElementById("dropdown3");
    var param = dropdown.options[dropdown.selectedIndex].text;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.ClassName AS Class, Count(DISTINCT Ebook.ISBN) as eBooks_Available ";
    query += "FROM Ebook INNER JOIN Class ON Class.ClassID = Ebook.ClassID ";
    query += "INNER JOIN Department ON Class.DepartmentID = Department.DepartmentID ";
    query += "INNER JOIN Major ON Major.DepartmentID = Department.DepartmentID ";
    query += "WHERE Department.DepartmentName LIKE \"%" + param + "%\" ";
    query += "GROUP BY Class.ClassID ";
    query += "Order By eBooks_Available DESC, Class.ClassName ";
    
    execute(query);
}

function query3()
{
    var dropdown = document.getElementById("dropdown3");
    var param = dropdown.options[dropdown.selectedIndex].text;
    
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
}

function query4()
{    
    var dropdown = document.getElementById("dropdown3");
    var param = dropdown.options[dropdown.selectedIndex].text;
    
    var searchBox = document.getElementById("form2").elements[0].value;
    var searchTerms = searchBox.split(", ");
    
    var query = "";
    
    query += "SELECT OnlineTutorial.Title, Class.ClassName AS Class, OnlineTutorial.URL ";
    query += "FROM OnlineTutorial INNER JOIN Class ON OnlineTutorial.ClassID = Class.ClassID ";
    query += "Where Class.ClassID=\"" + param + "\" ";
    
    for (var i = 0; i < searchTerms.length; i++)
    {
        query += "OR OnlineTutorial.Title LIKE \"%" + searchTerms[i] + "%\" ";
    }
    
    query += "Order By OnlineTutorial.Title, OnlineTutorial.TutorialID ";
    
    execute(query);
}


function query5()
{   
    var param = document.getElementById("form1").elements[0].value;
    var rating = document.getElementById("slider1").value;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.ClassName, Faculty.FName AS Professor_FirstName, ";
    query += "Faculty.LName AS Professor_LastName, Faculty.Rating AS RateMyProfessor_Rating ";
    query += "FROM Faculty INNER JOIN Class ON Faculty.facultyID = Class.FacultyID ";
    query += "INNER JOIN Software ON Software.ClassID = Class.ClassID ";
    query += "WHERE Faculty.Rating >= " + rating + " AND Software.Name=\"" + param + "\" ";
    query += "ORDER BY Faculty.Rating DESC, Class.ClassName";
    
    execute(query);
}

/***************************************************************************************************/

/**************************** DOM manipulation for advanced queries ********************************/

function createRangeElement(id)
{
    var slider = document.createElement("input");
    slider.type = "range";
    slider.id = id;
    slider.min = 0;
    slider.max = 5;
    slider.step = 0.1;
    slider.oninput = updateValue;
    
    return slider;
}

function labelSlider()
{
    var slider = document.getElementById("slider1");
    var div = document.createElement("strong");
    div.id = "sliderDiv";
    div.textContent = " " + slider.value;
    div3.appendChild(div);
}

function updateValue(val) 
{
    var slider = document.getElementById("slider1");
    var div = document.getElementById("sliderDiv");

    div.textContent = " " + slider.value;
}

function createFormElement(id)
{   
    var form = document.createElement("form");
    form.setAttribute("id", id);
    
    return form;
}

function labelElement(element, label)
{
    element.appendChild(document.createElement("br"));
    
    var text = document.createElement("strong");
    text.innerHTML = label;
    element.appendChild(text);
}

function addInputElementToForm(form, name, value)
{   
    var input = document.createElement("input"); 
    
    input.setAttribute("type", "text");
    input.setAttribute("name", name);
    input.setAttribute("value", value);
    input.placeholder="Linked List, Tree, Stack";
    
    form.appendChild(input);
}

function addElementToHTML(element)
{   
    var parent = document.getElementById("param");
    parent.appendChild(element);  
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
    xhr.open("GET", "./../Academic-Resources2.sql", true);

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