FROM amazon/aws-cli:latest

RUN yum install -q -y wget tar gzip

COPY ./install-node.sh ./install-node.sh

RUN chmod +x ./install-node.sh && ./install-node.sh

RUN yum remove -q -y wget tar gzip

ENTRYPOINT ["/bin/sh", "-c"]
