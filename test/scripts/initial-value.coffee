#!/usr/bin/env ./node_modules/.bin/coffee

# The expected output is a number above 10 and below 25.

now = require '../../lib/performance-now'
console.log now().toFixed 3
