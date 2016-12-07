var sql = window.SQL;

var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');
var execBtn = document.getElementById('execute');

execBtn.addEventListener("click", execute); 

//var query = "SELECT * FROM Faculty";
var db = new sql.Database();

window.onload = function()
{
    loadDB();
    document.getElementById("selectQuery").disabled=false; // enable query dropdown
}


/* 
 * Executes query based upon user dropdown selection 
 */
function setQuery(val) 
{  
    //clearErrors(); 
    
    outputElm.innerHTML = ""; // clear output
    
    var dropdown = document.getElementById("selectQuery"); // get handle to query dropdown
    
    var selection = dropdown.options[dropdown.selectedIndex].id; // get handle to 
    
    //removePreviousFormIfExists();  
    
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
//    query = "SELECT Name, URL, ISBN, ClassID FROM Ebook WHERE Ebook.ClassID=\"" + course +"\" ";
//    query += "ORDER BY Name";
    var query = "SELECT LName FROM Faculty"
    execute(query);
}




/* 
 * sql.js is not well-supported on loading server-side databases
 * to brute force around this, I'm creating the database on page load
 * please don't kill me durga...
 */
function loadDB()
{
    var xhr = new XMLHttpRequest();
    xhr.open('GET', './../test.txt', true);

    xhr.onload = function(e) 
    {    
        db.run(xhr.responseText); // Run the query without returning anything
    };

    xhr.send();
}


/*
 * executes query from global variable
 */
function execute(query)
{
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