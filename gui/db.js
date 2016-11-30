var sql = require('sql.js');
//var fs = require('fs');
alert("hit");
//var sql = require('sql.js');
var bfr = fs.readFileSync('./../Academic-Resources.db');
var db = new sql.Database(bfr);
db.each('SELECT * FROM Major', function (row) {
    alert(row);
});