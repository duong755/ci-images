FROM ubuntu:latest

ARG PHP_VERSION=7.4

RUN apt-get update -y

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ondrej/php

RUN add-apt-repository -y ppa:git-core/ppa

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
  git \
  ssh \
  rsync \
  php${PHP_VERSION} \
  php${PHP_VERSION}-common \
  php${PHP_VERSION}-mysql \
  php${PHP_VERSION}-xml \
  php${PHP_VERSION}-xmlrpc \
  php${PHP_VERSION}-curl \
  php${PHP_VERSION}-gd \
  php${PHP_VERSION}-imagick \
  php${PHP_VERSION}-cli \
  php${PHP_VERSION}-dev \
  php${PHP_VERSION}-imap \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-opcache \
  php${PHP_VERSION}-soap \
  php${PHP_VERSION}-zip \
  php${PHP_VERSION}-intl && \
  rm -rf /var/lib/apt/lists/*

COPY install-composer.sh ./

RUN chmod +x install-composer.sh && ./install-composer.sh && rm -f ./install-composer.sh
