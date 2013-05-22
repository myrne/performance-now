hrtime = process.hrtime

module.exports = -> (getNanoSeconds() - loadTime) / 1e6

getNanoSeconds = ->
  hr = hrtime()
  hr[0] * 1e9 + hr[1]

loadTime = getNanoSeconds()