FROM docker/compose:1.11.2

MAINTAINER John Allen <john.allen@technekes.com>

RUN \
  apk --no-cache add --virtual .rundeps \
    git \
    openssh-client \
    docker \
    parallel \
    curl \
    ca-certificates
