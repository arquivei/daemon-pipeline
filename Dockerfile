FROM golang:1.18.3-stretch AS build-env

RUN apt-get update -qq && apt-get install -y -q --no-install-recommends \
    git \
    libc6 \
    gcc \
    mingw-w64 \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.50.1

RUN mkdir /app

ADD . /app/

WORKDIR /app

COPY *.sh /

CMD ["bash"]