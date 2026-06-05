FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y trim-galore cutadapt fastqc default-jre && \
    apt-get clean

WORKDIR /data

CMD ["trim_galore", "--help"]
