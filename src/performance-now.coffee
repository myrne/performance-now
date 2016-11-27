module.exports = (
	if performance?.now?
		-> performance.now()

	else if process?.hrtime?
		getNanoSeconds = ->
			hr = process.hrtime()
			hr[0] * 1e9 + hr[1]
		loadTime = getNanoSeconds()
		-> (getNanoSeconds() - loadTime) / 1e6

	else if Date.now?
		loadTime = Date.now()
		-> Date.now() - loadTime

	else
		loadTime = new Date().getTime()
		-> new Date().getTime() - loadTime
)
