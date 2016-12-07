var sql = window.SQL;

var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');
var execBtn = document.getElementById('execute');
var queryDropdown = document.getElementById("selectQuery"); // get handle to query dropdown

var db = new sql.Database();


/* 
 * loads db on page load, and allows user to select a query
 */ 
window.onload = function()
{
    loadDB();
    document.getElementById("selectQuery").disabled=false; // enable query dropdown
}


/* 
 * Executes query based upon queryDropdown value
 */
function setQuery() 
{   
    removeAllDynamicElements();
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
 * removes element specified by its DOM id, if it exists
 */
function removeElement(id)
{
    var element = document.getElementById(id);
    
    if (typeof(element) != 'undefined' && element != null)
        element.remove();
}


/* 
 * removes all query-specific elements we created on previous query
 */ 
function removeAllDynamicElements()
{
    removeElement("form1");
    removeElement("dropdown1");
    removeElement("dropdown2");
}


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


/********************************* Basic queries **********************************/

function getCourseReserves(course)
{
    var query = "SELECT * FROM Textbook WHERE Textbook.ClassID=\"" + course +"\" ";
    
    execute(query);
}
function getEbooks(course)
{
    var query = "SELECT Name, URL, ISBN, ClassID FROM Ebook WHERE Ebook.ClassID=\"" + course +"\" ";
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
    var query = "SELECT * FROM OfficeHours WHERE OfficeHours.ClassID=\"" + course +"\" ";
    
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

/********************************* Advanced queries **********************************/



/* 
 * sql.js is not well-supported on loading server-side databases
 * to brute force around this, I'm creating the database on page load
 * please don't kill me durga...
 */
function loadDB()
{
    var xhr = new XMLHttpRequest();
    xhr.open('GET', './../Academic-Resources.txt', true);

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
            return '';    
        
        var open = '<'+tagName+'>', close='</'+tagName+'>';
        return open + vals.join(close + open) + close;
    }
  
    return function (columns, values) 
    {
        var tbl  = document.createElement('table');
        var html = '<thead>' + valconcat(columns, 'th') + '</thead>';
        var rows = values.map(function(v){ return valconcat(v, 'td'); });
        html += '<tbody>' + valconcat(rows, 'tr') + '</tbody>';
	    tbl.innerHTML = html;
        return tbl;
    }
}();