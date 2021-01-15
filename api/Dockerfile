FROM golang:1.15

# aws sam cli
RUN apk --update-cache add \
    python3 \
    python3-dev \
    py3-pip \
    gcc \
    g++ \
    npm \
    make \
    git
RUN pip3 install aws-sam-cli
ENV SAM_CLI_TELEMETRY=0
#==1.12.0

# hot reload
#RUN apk add --update-cache npm
#RUN npm install --unsafe-perm -g supervisor

WORKDIR /app

# dependency
COPY . .
#RUN apk add --update-cache make
#RUN apk add --update-cache git
RUN go get github.com/cespare/reflex
ENV PATH $HOME/go/bin:$PATH 
#CMD ["reflex", "-g", '*', "make compile"]
#RUN chmod +x /go/bin/reflex
#RUN go get -u github.com/aws/aws-lambda-go/lambda
#RUN go get -u github.com/aws/aws-lambda-go/events
RUN make build

EXPOSE 3000
CMD ["make", "watch"]
