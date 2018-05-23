var express = require('express');
var app = express();
var bodyParser = require('body-parser')
const port = process.argv[2]; // 5000

// parse application/json
app.use(bodyParser.json())

app.post('/', function(req, res) {
    var message = req.body;

    res.send(JSON.stringify(message, null, 4));
    console.log(JSON.stringify(message, null, 4))
});

app.listen(port);
