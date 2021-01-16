FROM alpine

ENV SAM_CLI_VERSION=1.15.0
ENV SAM_CLI_TELEMETRY=0
ENV PYTHONUSERBASE=/usr/local

RUN apk --update-cache add \
    python3 \
    python3-dev \
    py3-pip \
    gcc \
    g++ \
    curl \
    bash
RUN pip3 install --user aws-sam-cli==${SAM_CLI_VERSION} awscli

WORKDIR /app
COPY . /app

EXPOSE 3000

RUN chmod +x start.sh
CMD ["/app/start.sh"]