FROM apache/tika:3.2.2.0-full

LABEL maintainer="info@redpencil.io"

USER root
RUN apt-get update &&\
    apt-get install tesseract-ocr-nld &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&\
    mkdir -p /config && mkdir -p /app

COPY scripts /app/scripts
COPY tika-config.xml /config/tika-config.xml

CMD ["-c", "/config/tika-config.xml"]
