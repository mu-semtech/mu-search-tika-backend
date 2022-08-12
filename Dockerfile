FROM apache/tika:2.4.0-full

LABEL maintainer="info@redpencil.io"

RUN apt-get update &&\
    apt-get install tesseract-ocr-nld &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
