FROM ubuntu:20.04

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get install -y tzdata
RUN apt-get install -y git
ENV TZ Asia/Tokyo

# aws sam cli
RUN apt-get install -y python3 python3-pip
RUN pip3 install aws-sam-cli awscli
ENV SAM_CLI_TELEMETRY=0
RUN sam --version

# hot reload
RUN apt-get install -y golang-go
ENV PATH $HOME/go/bin:$PATH 
RUN go get github.com/cespare/reflex

WORKDIR /app

# dependency
COPY . .
#RUN cd ./greet && go mod download
#RUN go get -u github.com/aws/aws-lambda-go/lambda
#RUN env GOOS=linux CGO_ENABLED=0 go build -o greet/greet greet/main.go
#RUN make build

EXPOSE 3000
CMD ["make", "api"]
