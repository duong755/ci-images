FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y apt-transport-https wget tar gzip unzip

COPY *.sh ./

RUN chmod +x ./install-node.sh && ./install-node.sh

RUN chmod +x ./install-aws-cli-v2.sh && ./install-aws-cli-v2.sh

