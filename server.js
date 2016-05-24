var http = require('http')
var ecstatic = require('ecstatic')
st = ecstatic('public')
var port = process.env.PORT || 8080

var server = http.createServer(function(req, res) {
	st(req, res)
})

server.listen(port)
