FROM python:3.7

LABEL maintainer="baltacifatih14@gmail.com"

RUN apt-get update && \
    apt-get install -y \
        wget vim unzip zip curl && \ 
    rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install \
        Django==3.0.2 \
        pylint \
        autopep8

WORKDIR /workspace

CMD [ "bash" ]
