.PHONY: default bootstrap mocha expect

default: bootstrap mocha expect

bootstrap:
	cp ../bootstrap/docs/assets/css/bootstrap.css css/
	cp ../bootstrap/docs/assets/css/bootstrap-responsive.css css/
	cp ../bootstrap/docs/assets/css/bootstrap-ie6.css css/
	node_modules/.bin/lessc --yui-compress css/bootstrap.css > css/bootstrap.min.css
	node_modules/.bin/lessc --yui-compress css/bootstrap-responsive.css > css/bootstrap-responsive.min.css
	node_modules/.bin/lessc --yui-compress css/bootstrap-ie6.css > css/bootstrap-ie6.min.css
	cp ../bootstrap/docs/assets/js/bootstrap.js js/
	node_modules/.bin/uglifyjs js/bootstrap.js -c -m -o js/bootstrap.min.js
	cp ../bootstrap/docs/assets/img/glyphicons-halflings.png img/
	cp ../bootstrap/docs/assets/img/glyphicons-halflings-white.png img/

mocha:
	cp ../mocha/mocha.css css/
	cp ../mocha/mocha.js js/
	node_modules/.bin/lessc --yui-compress css/mocha.css > css/mocha.min.css
	node_modules/.bin/uglifyjs js/mocha.js -c -m -o js/mocha.min.js

expect:
	cp ../expect.js/expect.js js/
	node_modules/.bin/uglifyjs js/expect.js -c -m -o js/expect.min.js
