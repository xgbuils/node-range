"use strict";

// Returns an array of integers starting at a, incrementing by step, ending before b.
//
// Example:
//
// > var range = require("range").range;
// > range(0, 10);
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

function range(a, b, step) {
  step = step || 1;

  var x, r = [];
  var cmp = step > 0 ? function (y, z) { return y < z; } : function (y, z) { return y > z; };

  for (x = a; cmp(x, b); x += step) {
    r.push(x);
  }

  return r;
}

exports.range = range;
