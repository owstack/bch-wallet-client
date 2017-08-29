.PHONY: cover

BIN_PATH:=node_modules/.bin/

all:	bcccore-wallet-client.min.js

clean:
	rm bcccore-wallet-client.js
	rm bcccore-wallet-client.min.js

bcccore-wallet-client.js: index.js lib/*.js
	${BIN_PATH}browserify $< > $@

bcccore-wallet-client.min.js: bcccore-wallet-client.js
	uglify  -s $<  -o $@

cover:
	./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --reporter spec test
