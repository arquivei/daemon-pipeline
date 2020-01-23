FROM golang:1.13.2-stretch AS build-env

RUN apt-get update -qq && apt-get install -y -q --no-install-recommends \
    git \
    libc6 \
    gcc \
    mingw-w64 \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /app

ADD . /app/

WORKDIR /app

COPY *.sh /

CMD ["bash"]