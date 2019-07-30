var express = require('express');
var mysql = require('mysql');

//create connection

var db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'root@123',
    database : 'nodems'
});


db.connect(function(er) {
   if (er) throw er;
   console.log("DB connected");
});


var app = express();

//create db
app.get('/createdb', function(req, res){
    var sql = 'create database nodems';
    db.query(sql, function(err, result) {
        if(err) throw err;
        console.log(result);
        res.send('Database created');
    });
   });

app.listen('3000', function()  {
    console.log('Server started');
});

