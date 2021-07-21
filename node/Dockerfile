FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install --no-install-recommends -y \
  ca-certificates apt-transport-https wget tar gzip ssh rsync \
  && rm -rf /var/lib/apt/lists/*

COPY *.sh ./

RUN chmod +x ./install-node.sh && ./install-node.sh && rm -f ./install-node.sh
