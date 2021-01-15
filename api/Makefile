build:
	make deps && make compile

compile:
	env GOOS=linux CGO_ENABLED=0 go build "-ldflags=-s -w -buildid=" -trimpath -o greet/greet greet/main.go

deps:
	#cd ./greet && go mod download
	#cd ./greet && go get -u ./...
	go get -u github.com/aws/aws-lambda-go/lambda
	go get -u github.com/aws/aws-lambda-go/events

hr:
	reflex -c reflex.conf

api:
	sam local start-api --host 0.0.0.0

watch:
	make hr & make api
