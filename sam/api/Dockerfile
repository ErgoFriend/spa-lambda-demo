FROM golang:1.13-alpine

RUN apk add --no-cache git bash

WORKDIR /app
COPY . /app
#RUN cd greet &&  go mod download

RUN chmod +x build.sh
ENTRYPOINT ["sh", "/app/build.sh"]
