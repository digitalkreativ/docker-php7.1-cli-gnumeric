FROM php:7.1-cli
MAINTAINER Tom Sacré <github@digitalkreativ.com>

# PHP config
ADD ./php.ini /usr/local/etc/php/

# Install modules
RUN apt-get update \
    && apt-get install -y \
        apt-utils \
        curl \
        git \
        unzip \
        wget \
        zip \
        libcurl4-gnutls-dev \
        libmcrypt-dev \
        libtidy-dev \
        libbz2-dev \
        libxml2-dev \
        libssl-dev \
        libicu-dev \
        gnumeric \
    && docker-php-ext-install \
        bcmath \
        bz2 \
        curl \
        gettext \
	    intl \
        json \
        mbstring \
        mcrypt \
        opcache \
        tidy \
        zip
