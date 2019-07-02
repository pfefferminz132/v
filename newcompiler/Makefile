# get git commit information
VERSION := $(shell git describe --tags --match "v[0-9]*" --abbrev=8)

.PHONY: all
all: v

.PHONY: test
test: check
	@find .. -name '*_test.v' | xargs v {}

.PHONY: clean
clean:
	@rm -f v

.PHONY: check
check:
	@which v > /dev/null	

v: check
	@v -o v .
	@cc -std=gnu11 -DVERSION="\"$(VERSION)\"" -w -o v ~/.vlang/v.c

