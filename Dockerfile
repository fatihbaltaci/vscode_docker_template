FROM python:3.7

LABEL maintainer="baltacifatih14@gmail.com"

RUN apt-get update && \
    apt-get install -y \
        wget vim unzip zip curl tzdata && \ 
    rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install \
        Django==3.0.2 \
        pylint \
        autopep8
        
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN ln -sf /usr/share/zoneinfo/Turkey /etc/localtime

WORKDIR /workspace

CMD [ "bash" ]
