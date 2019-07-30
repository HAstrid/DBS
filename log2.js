var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root@123"
});

con.connect(function(er) {
  if (er) throw er;
  console.log("Connected!");
});
