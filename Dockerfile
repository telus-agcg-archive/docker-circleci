FROM docker/compose:1.11.2

MAINTAINER John Allen <john.allen@technekes.com>

RUN \
  apk --no-cache add --virtual .rundeps \
    ca-certificates \
    curl \
    docker \
    git \
    openssh-client \
    parallel \
    ruby \
    ruby-bundler \
    ruby-json && \
  gem install danger --no-document
