var execBtn = document.getElementById('execute');
var outputElm = document.getElementById('output');
var errorElm = document.getElementById('error');
var dbFileElm = document.getElementById('dbfile');

// Start the worker in which sql.js will run
var worker = new Worker("worker.sql.js");
worker.onerror = error;

// Open a database
worker.postMessage({action:'open'});

function getParam1()
{
            // create form element
            var form = document.createElement("form");
            form.setAttribute('id', "form1");
            form.setAttribute('onsubmit', "query1()")
            
            // add text label
            var text = document.createTextNode("Enter major ID:");
            form.appendChild(text);
            
            // create input element inside form
            var input = document.createElement("input"); //input element, text
            input.setAttribute('type',"text");
            input.setAttribute('name',"MajorID");
            input.setAttribute('value', "BSCO");
            form.appendChild(input);
            
            // create input button inside form
            var inputButton = document.createElement("input");
            inputButton.setAttribute('type',"submit");
            inputButton.setAttribute('value', "Submit");
            form.appendChild(inputButton);
            
            // add the form to the empty div we allocated 
            var element = document.getElementById("param1");
            element.appendChild(form);
}

function query1()
{
//    var x = document.getElementById("form1");
//    var param = form1.elements[0].value;
    var param = document.getElementById("form1").elements[0].value;
    
    
    //var query = "SELECT Name FROM Major WHERE MajorID=\"" + param + "\"";
    var query = "SELECT * FROM Major";
    //alert(query);

    execute(query); 
    //execute("SELECT Name FROM Major WHERE MajorID=" + param); 
}

function setQuery(val) 
{
    var myselect = document.getElementById("selectQuery");
    
    switch(myselect.options[myselect.selectedIndex].id) 
    {
        case "query1":
            execute(myselect.options[myselect.selectedIndex].value);    
            break;
        case "query2":
            execute(myselect.options[myselect.selectedIndex].value);    
            break;
        case "query3":
            execute(myselect.options[myselect.selectedIndex].value);    
            break;
        case "query4":
            getParam1();
            break;
        default:
            break;
    }
    //execute(myselect.options[myselect.selectedIndex].value);    
}

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

// Run a command in the database
function execute(commands) 
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
    
	worker.postMessage({action:'exec', sql:commands});
	outputElm.textContent = "Fetching results...";
}

// Create an HTML table
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

// Load a db from a file
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
		}
		catch(exception) {
			worker.postMessage({action:'open',buffer:r.result});
		}
	}
    
	r.readAsArrayBuffer(f);
}