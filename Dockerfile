FROM apache/tika:latest-full

RUN apt-get update \
    && apt-get purge -y tesseract-ocr \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y tesseract-ocr-por \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
