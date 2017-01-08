Bluebird = require "bluebird"
exec = require("child_process").execSync
{assert} = require "chai"

describe "scripts/initital-value.coffee (module.uptime(), expressed in milliseconds)", ->
  result = exec("./test/scripts/initial-value.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 100", -> assert.isAbove result, 100
  it "printed a value below 250", -> assert.isBelow result, 250

describe "scripts/delayed-require.coffee (sum of uptime and 200 ms delay`)", ->
  result = exec("./test/scripts/delayed-require.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 330", -> assert.isAbove result, 330
  it "printed a value below 400", -> assert.isBelow result, 400

describe "scripts/delayed-call.coffee (sum of uptime and 200 ms delay`)", ->
  result = exec("./test/scripts/delayed-call.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 330", -> assert.isAbove result, 330
  it "printed a value below 225", -> assert.isBelow result, 400

describe "scripts/difference.coffee", ->
  result = exec("./test/scripts/difference.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 0.005", -> assert.isAbove result, 0.005
  it "printed a value below 0.07", -> assert.isBelow result, 0.07
