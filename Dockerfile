FROM docker/compose:1.19.0

MAINTAINER John Allen <john.allen@technekes.com>

RUN \
  apk --no-cache add --virtual .rundeps \
    bash \
    ca-certificates \
    curl \
    docker \
    git \
    openssh-client \
    openssl \
    parallel \
    ruby \
    ruby-bundler \
    ruby-json && \
  gem install danger --no-document
