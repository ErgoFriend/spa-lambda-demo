build:
	make deps && make compile

compile:
	env GOOS=linux go build -o greet/greet greet/main.go

deps:
	#cd ./greet && go mod download
	#cd ./greet && go get -u ./...
	go get -u github.com/aws/aws-lambda-go/lambda
	go get -u github.com/aws/aws-lambda-go/events

supervise:
	reflex -g '*.go' make compile

start-api:
	sam local start-api --host 0.0.0.0

watch:
	make supervise & make start-api
