FROM golang:1.11
MAINTAINER Rodrigo de Avila <rodrigo.avila@mailtop.com.br>
RUN curl -fsSL https://glide.sh/get | sh
RUN apt-get update && \
    apt-get install -y --no-install-recommends python-pip python-setuptools && \
    pip install --no-cache-dir awscli && \
    apt-get -y clean && apt-get -y autoclean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
