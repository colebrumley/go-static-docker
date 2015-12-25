#!/bin/bash
set -e
if [[ $(ls $GOPATH/src | wc -l) == 1 ]]; then
	cd $GOPATH/src/$(ls $GOPATH/src)
	go get -t -d -v
	go install -x -a -installsuffix cgo *.go
else
	cd $GOPATH/src
	go get -t -d -v ./...
	go install -x -a -installsuffix cgo ./...
fi
