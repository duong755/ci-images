FROM ubuntu:latest

RUN add-apt-repository -y ppa:ondrej/php ppa:git-core/ppa

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
  git \
  php7.3 \
  php7.3-common \
  php7.3-mysql \
  php7.3-xml \
  php7.3-xmlrpc \
  php7.3-curl \
  php7.3-gd \
  php7.3-imagick \
  php7.3-cli \
  php7.3-dev \
  php7.3-imap \
  php7.3-mbstring \
  php7.3-opcache \
  php7.3-soap \
  php7.3-zip \
  php7.3-intl

COPY install-composer.sh ./

RUN chmod +x install-composer.sh && ./install-composer.sh
