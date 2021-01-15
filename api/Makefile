build:
	make deps && make recompile

recompile:
	env GOOS=linux go build -o greet/greet greet/main.go

deps:
	cd ./greet && go mod download

supervise:
	supervisor --no-restart-on exit -e go --exec make -- recompile

start-api:
	sam local start-api --host 0.0.0.0

watch:
	make build &&	make supervise & make start-api
