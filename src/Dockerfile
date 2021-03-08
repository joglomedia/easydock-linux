# Dockerfile Args
ARG PHP_VERSION

# Use PHP version
FROM php:${PHP_VERSION}-fpm-alpine

# Maintainer
LABEL maintainer Edi Septriyanto <me@masedi.net> architecture="amd64/x86_64"
LABEL php-version="${PHP_VERSION}" build="8-Mar-2021"

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache \
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
    unzip
#    xz \
#    zlib-dev

# Add PHP extension installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install PHP extensions
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions \
    bcmath \
    bz2 \
    calendar \
#    ctype \
#    curl \
    exif \
    gd \
    gnupg \
    igbinary \
    imagick \
    intl \
#    json \
    ldap \
#    mbstring \
    memcached \
    mongodb \
    mysqli \
    opcache \
#    pear \
#    pdo \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
    redis \
    soap \
#    xml \
    xsl \
    zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install node & npm
RUN apk add --update nodejs npm

# Add user
RUN set -eux; \
    addgroup -g 1000 -S www; \
	adduser -u 1000 -h /var/www -s /bin/bash -D -S -G www www

# User permissions
RUN chown -R www:www /var/www

# Change current user to www
USER www

# Expose port 9000
EXPOSE 9000
CMD ["php-fpm"]