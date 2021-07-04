FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y apt-transport-https curl tar gzip unzip

COPY *.sh ./

RUN chmod +x ./install-node.sh && ./install-node.sh

RUN chmod +x ./install-aws-cli-v2.sh && ./install-aws-cli-v2.sh


