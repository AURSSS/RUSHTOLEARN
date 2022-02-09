const express = require('express')
var app = express();
const path = require('path')
const PORT = process.env.PORT || 5050
const http = require('http').Server(app)
const io = require('socket.io')(http)

app.use(express.static(path.join(__dirname, 'assets')))
app.get('/', (req, res) => res.render('home'))

app.get('/', function(req, res){
	res.sendFile(__dirname + '/home.php');	
});

http.listen(PORT, () => console.log(`Listening on ${ PORT }`))

io.on('connection', function(socket){
	socket.on('event', function(msg){
		io.emit('event',msg);
	});
	console.log('A client connected sucessfully');	
});


