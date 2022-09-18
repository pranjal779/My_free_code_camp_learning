let express = require('express');
let app = express();
let bodyParser = require('body-parser')

require('dotenv').config()

// Implement a Root-Level Request Logger Middleware
app.use((request, response, next) => {
    console.log(request.method + ' ' + request.path + ' - ' + request.ip)
    next()
})

// Use Body-Parser to Parse POST Requests
app.use(bodyParser.urlencoded({extended: false}))

// one of the starting lessons
app.get("/", function(request, response) {
    //response.send('Hello Express');
    response.sendFile(__dirname + "/views/index.html");
});

// using app.use
app.use("/public", express.static(__dirname + "/public"));

//Serve JSON on a Specific Route.
//let message = {message: "Hello json"}; # not sure here was following GaneshH until here
/*app.get("/json", function(request, response) {
    response.json({
        "message": "Hello json"
    });
});*/


// Using the .env File
/*
can refer to
https://www.youtube.com/watch?v=UPN6D20dcO4&ab_channel=GaneshH
{ in the video at around 2:42 he says .env file is already present but
as of 9/17/2022 it is not in the repo you get from the instructions page, as much as I can understand we have to create the .env file.}
can refer here also for the code https://replit.com/@kingocto1005/boilerplate-express#myApp.js
*/
let message = {"message": "Hello json"};
app.get("/json", (request, response) => {
    if(process.env.MESSAGE_STYLE === "uppercase"){
        response.json({"message": "HELLO JSON"})
    } else {
        response.json(message)
    }
});

// chain Middleware to Create a Time Server
app.get('/now', (request, reponse, next) => {
    request.time = new Date().toString()
    next()
} , (request, response) => {
    response.json({'time': request.time})
})
/*
request.time method will get the Date method in a string
and
response.json will send a detailed json string about latest date i.e 
example:
{"time":"Sat Sep 17 2022 15:58:37 GMT-0400 (Eastern Daylight Time)"}
*/

// Get Route Parameter Input from the Client
app.get('/:word/echo', (request, response) => {
    response.json({echo: request.params.word})
})
// http://localhost:3000/freecodecamp/echo run this url or
// http://localhost:3000/NotSoEasyToUnderstandJScoding/echo

// Get Query Parameter Input from the Client
app.get('/name', (request, response) => {
    let string = request.query.first + ' ' + request.query.last
    response.json({name: string})
})
// in the URL -> http://localhost:3000/name?first=Pranjal&last=Shukla
// output -> {"name":"Pranjal Shukla"}


// Get Data from POST Requests
app.post('/name', bodyParser.urlencoded({extended: false}),
        (request, response) => {
    let string = request.body.first + " " + request.body.last;
    response.json({ name: string });
        })
// enter first name and kast name in the (/) root dir page 
// output example -> {"name":"Pranjal Shukla"}





















/*
*
GET /now - ::ffff:127.0.0.1
*
GET /now - ::1
*
GET / - ::1
*
GET /public/style.css - ::1
*
GET /json - ::1
*
GET /public - ::1
*
GET /now - ::1
https://www.freecodecamp.org
OPTIONS /_api/chain-middleware-time - ::1
https://www.freecodecamp.org
*
GET /now - ::ffff:127.0.0.1
https://www.freecodecamp.org
OPTIONS /_api/chain-middleware-time - ::1
https://www.freecodecamp.org
*
GET /now - ::ffff:127.0.0.1 

https://www.freecodecamp.org
OPTIONS /freecodecamp/echo/ech0-t3st/echo - ::1
https://www.freecodecamp.org
GET /freecodecamp/echo/ech0-t3st/echo - ::1
https://www.freecodecamp.org
OPTIONS /eChOtEsT/echo - ::1
https://www.freecodecamp.org
GET /eChOtEsT/echo - ::1
https://www.freecodecamp.org
OPTIONS /ech0-t3st/echo - ::1
https://www.freecodecamp.org
GET /ech0-t3st/echo - ::1
*
GET /NotSoEasyToUnderstandJScoding/echo - ::1
https://www.freecodecamp.org
OPTIONS /eChOtEsT/echo - ::1
https://www.freecodecamp.org
GET /eChOtEsT/echo - ::1
https://www.freecodecamp.org
OPTIONS /ech0-t3st/echo - ::1
https://www.freecodecamp.org
GET /ech0-t3st/echo - ::1
.
.
.
.
*
GET /name - ::1
*
GET / - ::1
*
GET /public/style.css - ::1
https://www.freecodecamp.org
OPTIONS /_api/add-body-parser - ::1
https://www.freecodecamp.org

Node is listening on port 3000...
*
GET / - ::1
*
GET /public/style.css - ::1
http://localhost:3000
POST /name - ::1
http://localhost:3000
POST /name - ::1
*/



 module.exports = app;
