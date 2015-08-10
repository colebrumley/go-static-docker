#!/bin/bash
set -e
if [[ $(ls $GOPATH/src | wc -l) == 1 ]]; then
	cd $GOPATH/src/$(ls $GOPATH/src)
else
	cd $GOPATH/src
fi
go get -t -d -v ./...
go install -x -a -installsuffix cgo ./...
