FROM node:slim

RUN apt-get update -y && apt-get install -y curl unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip -q awscliv2.zip && \
  ./aws/install -i /usr/local/aws-cli -b /usr/local/bin

ENTRYPOINT tail -f /dev/null
