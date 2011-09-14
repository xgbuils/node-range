#!/usr/bin/env node
/*jslint nodejs:true */

var cmp = require("cmp");

// Returns an array of integers starting at a, incrementing by step, ending before b.
//
// Example:
//
// > var range = require("range").range;
// > range(0, 10);
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

function range(a, b, step) {
	if (!step) {
		step = 1;
	}

	var r = [];

	for (var x = a; x < b; x += step) {
		r.push(x);
	}

	return r;
}

exports.range = range;

function test() {
	return cmp.eq(range(0, 10), [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) && cmp.eq(range(0, 10, 2), [0, 2, 4, 6, 8]);
}

exports.test = test;