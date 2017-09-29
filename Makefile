.PHONY: cover

BIN_PATH:=node_modules/.bin/

all:	bch-wallet-client.min.js

clean:
	rm bch-wallet-client.js
	rm bch-wallet-client.min.js

bch-wallet-client.js: index.js lib/*.js
	${BIN_PATH}browserify $< > $@

bch-wallet-client.min.js: bch-wallet-client.js
	uglify  -s $<  -o $@

cover:
	./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --reporter spec test
