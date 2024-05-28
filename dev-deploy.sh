#!/usr/bin/env bash
set -ex

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws lambda update-function-code --function-name ${APP_NAME}-invokeApi-dev --image-uri ${DOCKER_IMAGE}:${IDENTIFIER} --region ${AWS_REGION}