var express = require('express')    //Load express module with `require` directive
var app = express() 
 
//Define request response in root URL (/)
app.get('/', function (req, res) {
  res.send('Hello Welcome to Automateinfra.com')
})
app.listen(80, function () {
  console.log('app listening on port 8081!')
})