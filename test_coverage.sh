#!/bin/bash

go test -coverprofile=/var/tmp/capigraph.p -cover $(find ./ -name '*_test.go' -printf "%h\n" | sort -u)
go tool cover -html=/var/tmp/capigraph.p -o=/var/tmp/capigraph.html
echo See /var/tmp/capigraph.html
