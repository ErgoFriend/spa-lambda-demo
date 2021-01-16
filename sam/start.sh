#!/bin/sh
pwd
ls
sam local start-api --docker-volume-basedir "${VOLUME}" --host 0.0.0.0 --template template.yaml --debug
