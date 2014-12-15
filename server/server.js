var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.get('/feedback', function (req, res) {
	console.log('Submitted: \n\tRelationship: ' + req.query.relationship + '\n\tValue: ' +  req.query.value + '\n\tDifficulty: ' + req.query.difficulty);
	res.send('ok')
})

var server = app.listen(3000, function () {

  var host = server.address().address
  var port = server.address().port

  console.log('Example app listening at http://%s:%s', host, port)

})