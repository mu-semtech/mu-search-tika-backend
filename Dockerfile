FROM apache/tika:3.2.2.0-full

LABEL maintainer="info@redpencil.io"

RUN apt-get update &&\
    apt-get install tesseract-ocr-nld &&\
    apt-get clean -y &&\
    mkdir -p /config

COPY tika-config.xml /config/tika-config.xml

CMD ["-c", "/config/tika-config.xml"]
