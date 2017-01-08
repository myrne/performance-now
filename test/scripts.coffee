Bluebird = require "bluebird"
exec = require("child_process").execSync
{assert} = require "chai"

describe "scripts/initital-value.coffee", ->
  result = exec("./test/scripts/initial-value.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 3", -> assert.isAbove result, 3
  it "printed a value below 25", -> assert.isBelow result, 25

describe "scripts/delayed-require.coffee (the value is relative to when module was loaded, not `process.uptime()`)", ->
  result = exec("./test/scripts/delayed-require.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 3", -> assert.isAbove result, 3
  it "printed a value below 25", -> assert.isBelow result, 25

describe "scripts/delayed-call.coffee", ->
  result = exec("./test/scripts/delayed-call.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 200", -> assert.isAbove result, 200
  it "printed a value below 225", -> assert.isBelow result, 225

describe "scripts/difference.coffee", ->
  result = exec("./test/scripts/difference.coffee").toString().trim()
  it "printed #{result}", ->
  it "printed a value above 0.005", -> assert.isAbove result, 0.005
  it "printed a value below 0.07", -> assert.isBelow result, 0.07
