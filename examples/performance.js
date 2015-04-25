'use strict';

var range = require('../lib/range.js').range;
var args = process.argv
  .slice(2)
  .map(function (e) {
    return parseInt(e);
  });

var result = range.apply(null, args);
