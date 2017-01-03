build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

.PHONY: test
