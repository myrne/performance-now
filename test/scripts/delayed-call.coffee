#!/usr/bin/env ./node_modules/.bin/coffee

###
Expected output is a number above 310 and below 400.
The time reported is relative to the time the node.js process was started
this is approximately at `(Date.now() process.uptime() * 1000)`
###

delay = require "call-delayed"
now = require "../../lib/performance-now"
delay 200, -> console.log now().toFixed 3
