var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');
var execBtn = document.getElementById('execute');

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
dbFileElm.onchange = function() 
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
        case "query1":
            execBtn.addEventListener("click", query1); 
            break;
        case "query2":
            execBtn.addEventListener("click", query2); 
            break;
        case "query3":
            execBtn.addEventListener("click", query2);  
            break;
        case "query4":
            execBtn.addEventListener("click", query4); 
            break;
        case "query5":
            execBtn.addEventListener("click", query4);   
            break;
        default:
            break;
    }   
    
    getParameter(selection);
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
            labelForm(form, "Enter semester: ");
            addInputElementToForm(form, "MajorID", "Spring");
            break;
        case "query2":
            labelForm(form, "Enter major ID: ");
            addInputElementToForm(form, "MajorID", "BCOS");
            break;
        case "query4":
            labelForm(form, "Enter major ID: ");
            addInputElementToForm(form, "MajorID", "BMED");
            break;
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


/*
 * Retrieves user-input parameter, 
 * executes query,
 * and disables the execute button.
 */
function query1()
{   
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
//    query += "SELECT Student.FName, Student.LName, Tutor.TutorID, Availability.Weekday, Availability.StartTime, " 
//           + "Availability.EndTime, Class.Name ";
//    query += "FROM Tutor INNER JOIN Class ON Tutor.ClassID = Class.ClassID ";
//    query += "INNER JOIN Major ON Major.MajorID = Class.MajorID "
//    query += "INNER JOIN Student ON Tutor.StudentID = Student.StudentID ";
//    query += "WHERE Major.MajorID=\"" + param + "\" ";
//    query += "ORDER BY Tutor.TutorID, Availability.WeekDay, Availability.StartTime";
    
    query += "SELECT * ";
    query += "FROM Class ";
    query += "WHERE Semester=\"" + param + "\""; 

    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query1); 
}

function query2()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.Name, Count(Ebooks.ISBN) as ebook_avail ";
    query += "FROM Major INNER JOIN Class ON Major.MajorID = Class.MajorID ";
    query += "INNER JOIN Ebook ON Class.ClassID = Ebook.ClassID ";
    query += "WHERE Major.MajorID=\"" + param + "\" ";
    query += "GROUP BY Class.Name ";
    query += "ORDER BY ebook_Avail DESC, Class.Name";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query2); 
}

function query3()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    query += "SELECT Class.ClassID, Class.Name, Count(Ebooks.ISBN) as ebook_avail ";
    query += "FROM Major INNER JOIN Class ON Major.MajorID = Class.MajorID ";
    query += "INNER JOIN Ebook ON Class.ClassID = Ebook.ClassID ";
    query += "WHERE Major.MajorID=\"" + param + "\" ";
    query += "GROUP BY Class.Name ";
    query += "ORDER BY ebook_Avail DESC, Class.Name";
    
    execute(query);
    
    removeForm();
    
    execBtn.removeEventListener("click", query3); 
}

function query4()
{
    var param = document.getElementById("form1").elements[0].value;
    
    var query = "";
    
    execute("SELECT * FROM Major WHERE MajorID=\"" + param + "\"");
    
    removeForm();
    
    execBtn.removeEventListener("click", query4); 
}


function query5()
{   
    var param = document.getElementById("form1").elements[0].value;
    
    execute("SELECT * FROM Major WHERE MajorID=\"" + param + "\"");
    
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
