build:
	mkdir -p bin
	cp src/*.* bin/
	cp src/chat/* bin/
	cp src/irc/* bin/
	cp src/net/* bin/
	cp third_party/*.js bin/
	coffee -c bin/*.coffee
	rm bin/*.coffee

test: build
	mkdir -p bin
	cp test/*.* bin/
	cp test/mocks/* bin/
	cp -r third_party/jasmine-1.2.0 bin/
	coffee -c bin/*.coffee
	rm bin/*.coffee

clean:
	-rm -rf bin

all: build