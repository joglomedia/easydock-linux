#Dockerfile Args
ARG PHP_V

# PHP version
FROM ubuntu:20.04

# Set working directory
WORKDIR /var/www

# Set env
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC

# Install dependencies
RUN apt-get update \
    && apt-get install -y gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev python2 \
    && mkdir -p ~/.gnupg \
    && chmod 600 ~/.gnupg \
    && echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf \
    && apt-key adv --homedir ~/.gnupg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E5267A6C \
    && apt-key adv --homedir ~/.gnupg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C300EE8C \
    && echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu focal main" > /etc/apt/sources.list.d/ppa_ondrej_php.list \
    && apt-get update \
    && apt-get install -y php${PHP_V}-cli php${PHP_V}-dev \
       php${PHP_V}-pgsql php${PHP_V}-sqlite3 php${PHP_V}-gd \
       php${PHP_V}-curl php${PHP_V}-memcached \
       php${PHP_V}-imap php${PHP_V}-mysql php${PHP_V}-mbstring \
       php${PHP_V}-xml php${PHP_V}-zip php${PHP_V}-bcmath php${PHP_V}-soap \
       php${PHP_V}-intl php${PHP_V}-readline \
       php${PHP_V}-msgpack php${PHP_V}-igbinary php${PHP_V}-ldap \
       php${PHP_V}-redis \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && curl -sL https://deb.nodesource.com/setup_15.x | bash - \
    && apt-get install -y nodejs \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn \
    && apt-get install -y mysql-client \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN setcap "cap_net_bind_service=+ep" /usr/bin/php${PHP_V}

# Add user
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www
RUN groupadd --force -g $WWWGROUP www
RUN useradd -ms /bin/bash --no-user-group -g $WWWGROUP -u 1337 www


EXPOSE 8000

RUN usermod -u $WWWUSER www
RUN /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
RUN usermod -u $WWWUSER www
RUN mkdir /.composer
RUN  -R ugo+rw /.composer
RUN  gosu $WWWUSER "$@"
RUN /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
