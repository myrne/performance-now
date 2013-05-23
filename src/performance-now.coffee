if performance? and performance.now
  module.exports = -> performance.now()
else if process? and process.hrtime
  module.exports = -> (getNanoSeconds() - loadTime) / 1e6
  hrtime = process.hrtime
  getNanoSeconds = ->
    hr = hrtime()
    hr[0] * 1e9 + hr[1]
  loadTime = getNanoSeconds()
else
  module.exports = -> Date.now()