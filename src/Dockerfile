# Dockerfile Args
ARG PHP_VERSION

# Use PHP image
FROM php:${PHP_VERSION}-fpm-alpine

# Maintainer
LABEL maintainer Edi Septriyanto <me@masedi.net> architecture="amd64/x86_64"

# Set working directory
WORKDIR /var/www

# Add PHP extension installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions \
    /usr/local/bin/

# Install dependencies
RUN apk update && apk upgrade \
&&  apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    gd \
    git \
    imagemagick \
    imagemagick-dev \
    less \
    libjpeg-turbo-dev \
    libmcrypt-dev \
    libmemcached-dev \
    libpng \
    libpng-dev \
    libwebp-dev \
    libzip-dev \
    libxpm-dev \
    nano \
    openssl \
    python2 \
    tar \
    unzip \
# Install PHP extensions
&&  chmod +x /usr/local/bin/install-php-extensions && sync \
&&  install-php-extensions \
    bcmath \
    bz2 \
    calendar \
    exif \
    gd \
    gnupg \
    igbinary \
    imap \
    imagick \
    intl \
    ldap \
    memcached \
    mongodb \
    mysqli \
    opcache \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
    redis \
    soap \
    swoole \
    xsl \
    zip \
# Install composer
&&  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
# Install node & npm (not yet required for php application)
&&  apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/main/ nodejs npm \
&&  apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/edge/community/ yarn \
# Clean up install.
&&  rm -rf /var/cache/apk/* \
# Add user
&&  set -eux \
&&  addgroup -g 1000 -S www \
&&	adduser -u 1000 -h /var/www -s /bin/bash -D -S -G www www \
# User permissions
&&  chown -R www:www /var/www

# Change current user to www
USER www

# Expose port 9000
EXPOSE 9000

CMD ["php-fpm"]