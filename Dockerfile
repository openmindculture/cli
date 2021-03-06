FROM golang:1.8.3

ENV JQ_VERSION 1.5
ENV JQ_DOWNLOAD_URL https://github.com/stedolan/jq/releases/download/jq-$JQ_VERSION/jq-linux32

RUN apt-get -y -q update && \
    apt-get -y -q install httpie binutils-mingw-w64 gcc-mingw-w64 && \
    curl -fsSL "$JQ_DOWNLOAD_URL" -o jq && \
    chmod +x jq && mv jq /usr/local/bin/jq
