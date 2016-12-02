var execBtn = document.getElementById('execute');
var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');

execBtn.addEventListener("click", query4, true);

// Start the worker in which sql.js will run
var worker = new Worker("worker.sql.js");
worker.onerror = error;

// Open a database
worker.postMessage({action:'open'});

// Connect to the HTML element we 'print' to
function print(text) 
{
    outputElm.innerHTML = text.replace(/\n/g, '<br>');
}

function error(e) 
{
    console.log(e);
	errorElm.style.height = '2em';
	errorElm.textContent = e.message;
}

function noerror() 
{
    errorElm.style.height = '0';
}


/*
 * Clean up remnents of previous query, 
 * then execute next query based on user-input dropdown selection 
 */
function setQuery(val) 
{  
    noerror();
    
    document.getElementById("execute").disabled=true;
    
    // try to get handle to a query-specific form we created
    var paramForm = document.getElementById("form1");
    
    // if it exists, remove it before the next query
    if (typeof(paramForm) != 'undefined' && paramForm != null)
    {
         document.getElementById("param").removeChild(document.getElementById("form1"));   
    }
    
    // handle to query dropdown
    var myselect = document.getElementById("selectQuery");
    
    // take appropriate action based on query selected
    switch(myselect.options[myselect.selectedIndex].id) 
    {
        case "query1":
            execute(myselect.options[myselect.selectedIndex].value);    
            break;
        case "query2":
            query2();   
            break;
        case "query3":
            execute(myselect.options[myselect.selectedIndex].value);   
            break;
        case "query4":
            getParam();
            break;
        default:
            break;
    }   
}


function query2()
{
    execute("SELECT Name FROM Major");
}

/*
 * Retrieves user-input parameter, 
 * executes query,
 * and disables the execute button.
 */
function query4()
{
    var param = document.getElementById("form1").elements[0].value;
    
    execute("SELECT * FROM Major WHERE MajorID=\"" + param + "\"");
    
//    document.getElementById("execute").disabled=true;
}

/*
 * Create form element for user to input query parameters
 */
function getParam()
{
    // create form element
    var form = document.createElement("form");
    form.setAttribute('id', "form1");

    // add text label
    form.appendChild(document.createElement("br"));
    var text = document.createElement("strong");
    text.innerHTML = "Enter major ID: ";
    form.appendChild(text);

    // create input element inside form
    var input = document.createElement("input"); 
    input.setAttribute('type',"text");
    input.setAttribute('name',"MajorID");
    input.setAttribute('value', "BSCO");
    form.appendChild(input);

    // add the form to the empty div we allocated 
    var element = document.getElementById("param");
    element.appendChild(form);  
    
    // enable execute button
    document.getElementById("execute").disabled=false;
}


/* 
 * Run a query in the database
 */
function execute(query) 
{
	tic();
    
	worker.onmessage = function(event) 
    {
		var results = event.data.results;
		toc("Executing SQL");

		tic();
		outputElm.innerHTML = "";
        
		for (var i = 0; i < results.length; i++) 
        {
			outputElm.appendChild(tableCreate(results[i].columns, results[i].values));
		}
        
		toc("Displaying results");
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
        var rows = values.map(function(v){ return valconcat(v, 'td'); });
        html += '<tbody>' + valconcat(rows, 'tr') + '</tbody>';
	    tbl.innerHTML = html;
        return tbl;
    }
}();


// Performance measurement functions
var tictime;

if (!window.performance || !performance.now) 
{
    window.performance = {now:Date.now}
}

function tic () 
{
    tictime = performance.now()
}

function toc(msg) 
{
	var dt = performance.now()-tictime;
	console.log((msg||'toc') + ": " + dt + "ms");
}


/* 
 * Load a db from a file
 */
dbFileElm.onchange = function() 
{
	var f = dbFileElm.files[0];
	var r = new FileReader();
    
	r.onload = function() 
    {
		worker.onmessage = function() 
        {
			toc("Loading database from file");
		};
        
		tic();
        
		try {
			worker.postMessage({action:'open',buffer:r.result}, [r.result]);
            document.getElementById("selectQuery").disabled=false;
		}
		catch(exception) {
			worker.postMessage({action:'open',buffer:r.result});
		}
	}
    
	r.readAsArrayBuffer(f);
}