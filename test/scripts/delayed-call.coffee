#!/usr/bin/env ./node_modules/.bin/coffee

# Expected output is a number between 200 and 225.

delay = require "call-delayed"
now = require "../../lib/performance-now"
delay 200, -> console.log now().toFixed 3
