#!/usr/bin/env ./node_modules/.bin/coffee

###
Expected output is a number above 5 and below 25.
The time reported is relative to the time the module was loaded,
not relative to `process.uptime()`
###

delay = require "call-delayed"
delay 200, ->
  now = require "../../lib/performance-now"
  console.log now().toFixed 3
