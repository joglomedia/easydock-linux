#Dockerfile Args
ARG PHP_V

# PHP version
FROM php:${PHP_V}-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl \
    libmemcached-dev \
    libz-dev \
    libjpeg-dev \
    libpng-dev \
    libssl-dev \
    libmcrypt-dev \
    less \
    nano \
    vim \
    cron \
    git \
    unzip \
    libzip-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev
    
# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN apt-get update && apt-get install -y libmagickwand-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install pdo_mysql \
    pcntl \
    zip
RUN pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis
RUN if [ ${PHP_V} > 7.3 ] ; then \
    docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd;\
fi;
RUN if [ ${PHP_V} < 7.4 ] ; then \
    docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    && docker-php-ext-install gd;\
fi;
RUN docker-php-ext-install opcache

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install node & npm
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# User permissions
RUN chown -R www:www /var/www

# Supervisor
RUN groupadd supervisor
RUN usermod -a -G supervisor www
RUN apt-get install -y supervisor

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]