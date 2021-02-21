PWD := $(shell pwd)
TAG_NAME := "sample-air-error"
.PHONY: build run

build:
	docker build -t $(TAG_NAME) .

run:
	docker run -it --rm -v $(PWD):/go/src/github.com/bellwood4486/sample-air-error $(TAG_NAME)
