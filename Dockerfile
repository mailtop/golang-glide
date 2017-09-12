FROM golang:1.9
MAINTAINER Rodrigo de Avila <rodrigo.avila@mailtop.com.br>
RUN curl -fsSL https://glide.sh/get | sh
RUN apt update && \
    apt install -y --no-install-recommends python-pip python-setuptools && \
    pip install --no-cache-dir awscli && \
    apt -y clean && apt -y autoclean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
