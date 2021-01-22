#Dockerfile Args
ARG PHP_V

# PHP version
FROM php:${PHP_V}-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl \
    less \
    nano \
    cron \
    git \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install opcache
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql || true
RUN docker-php-ext-install mbstring && docker-php-ext-enable mbstring || true
RUN docker-php-ext-install zip && docker-php-ext-enable zip || true
RUN docker-php-ext-install json && docker-php-ext-enable json || true
RUN docker-php-ext-install xml && docker-php-ext-enable xml || true
RUN docker-php-ext-install gd && docker-php-ext-enable gd || true
RUN docker-php-ext-install bcmatch && docker-php-ext-enable bcmatch || true
RUN docker-php-ext-install ctype && docker-php-ext-enable ctype || true
RUN docker-php-ext-install intl && docker-php-ext-enable intl || true
RUN docker-php-ext-install curl && docker-php-ext-enable curl || true
RUN docker-php-ext-install common || true
RUN apt-get update && apt-get install -y libmagickwand-dev --no-install-recommends && rm -rf /var/lib/apt/lists/* || true
RUN pecl install imagick || true
RUN docker-php-ext-enable imagick || true

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install node & npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Supervisord
RUN apt-get install -y supervisor

# Cronjob
RUN crontab -l | { cat; echo "* * * * * sh /usr/local/etc/php/conf.d/cron.sh"; } | crontab -

# Add user
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# User permissions
RUN chown -R www:www /var/www

# Change current user to www
USER www

# Expose port 9000
EXPOSE 9000
CMD ["php-fpm","/usr/bin/supervisord","crond"]