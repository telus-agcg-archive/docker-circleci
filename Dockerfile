FROM docker/compose:alpine-1.29.2
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
    'ruby<3.0.0-r1' \
    ruby-bundler \
    ruby-json && \
  gem install danger --no-document
