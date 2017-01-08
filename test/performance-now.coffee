{assert} = require "chai"
Bluebird = require "bluebird"

now = require "../"

describe "now", ->
  it "gives a value above 50 after a 50 ms timeout", ->
    Bluebird.resolve().delay(50).then -> assert.isAbove now(), 50

  it "two subsequent calls return an increasing number", ->
    assert.isBelow now(), now()

  it "has less than 10 microseconds overhead", ->
    assert.isBelow Math.abs(now() - now()), 0.010

  it "can be called 1 million times in under 1 second (averaging under 1 microsecond per call)", ->
    @timeout 1000
    now() for [0...1e6]
    undefined

  it "shows that at least 0.2 ms has passed after a timeout of 1 ms", ->
    earlier = now()
    Bluebird.resolve().delay(1).then -> assert.isAbove (now()-earlier), 0.2

  it "shows that at most 2 ms has passed after a timeout of 1 ms", ->
    earlier = now()
    Bluebird.resolve().delay(1).then -> assert.isBelow (now()-earlier), 2

  it "shows that at least 190ms ms has passed after a timeout of 200ms", ->
    earlier = now()
    Bluebird.resolve().delay(200).then -> assert.isAbove (now()-earlier), 190

  it "shows that at most 220 ms has passed after a timeout of 200ms", ->
    earlier = now()
    Bluebird.resolve().delay(200).then -> assert.isBelow (now()-earlier), 220
