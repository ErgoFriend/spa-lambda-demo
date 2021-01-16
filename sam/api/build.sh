#!/bin/sh
go get -u github.com/aws/aws-lambda-go/lambda
go get -u github.com/aws/aws-lambda-go/events
CGO_ENABLED=0 GOOS=linux go build -v -a -installsuffix cgo -o ./greet/main ./greet/main.go