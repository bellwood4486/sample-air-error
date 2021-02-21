FROM golang:1.16-alpine

RUN apk update && \
    apk add git

ADD . $GOPATH/src/github.com/bellwood4486/sample-air-error
WORKDIR $GOPATH/src/github.com/bellwood4486/sample-air-error

RUN go install github.com/cosmtrek/air@latest
CMD air
