FROM golang:1.15-alpine

# aws sam cli
RUN apk --update-cache add \
    python3 \
    python3-dev \
    py3-pip \
    gcc \
    g++
RUN pip3 install aws-sam-cli
#==1.12.0

# hot reload
RUN apk add --update-cache npm
RUN npm install --unsafe-perm -g supervisor

WORKDIR /api

# dependency
COPY . .
RUN apk add --update-cache make
RUN apk add --update-cache git
RUN go get -u github.com/aws/aws-lambda-go/lambda
RUN go get -u github.com/aws/aws-lambda-go/event

EXPOSE 3000
CMD ["make", "watch"]
