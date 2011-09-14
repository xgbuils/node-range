#!/usr/bin/env node
/*jslint nodejs:true */

var
	range = require("./range").range,
	http = require("http");

function fizzbuzz() {
	return range(1, 101).map(function(n) {
		if (n % 3 == 0 && n % 5 == 0) {
			return "FizzBuzz";
		}
		else if (n % 3 == 0) {
			return "Fizz";
		}
		else if (n % 5 == 0) {
			return "Buzz";
		}
		else {
			return "" + n;
		}
	});
}

http.createServer(function (req, res) {
	res.writeHead(200, {"Content-Type": "text/plain"});
	res.end(fizzbuzz().join("\n"));
}).listen(8124, "127.0.0.1");

console.log("Server running at http://127.0.0.1:8124/");