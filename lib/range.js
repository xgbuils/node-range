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

  var s = (b - a) * step;
  var step2 = step * step;
  for (x = a; s > 0; x += step) {
    r.push(x);
    s -= step2;
  }

  return r;
}

exports.range = range;
