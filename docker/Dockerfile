FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y fastqc default-jre && \
    apt-get clean

WORKDIR /data

CMD ["fastqc", "--help"]
