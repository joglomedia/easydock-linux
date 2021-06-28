# EasyDock for Linux ;)

![EasyDock for Linux](ed_275px.png)

A fork of EasyDock for Linux. Docker LEMP stack easy integration.

Dockerize your PHP apps ;)

![GitHub stars](https://img.shields.io/github/stars/joglomedia/easydock-linux?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/joglomedia/easydock-linux?label=version)

## Features

EasyDock comes with:

- Nginx
- PHP (7.4 and 8.0)
- MariaDB (Drop-in replacement for MySQL)
- PostgreSQL
- Redis
- ~~phpmyadmin~~ Adminer (Lightweight MySQL admin)
- MailHog
- Node.js, NPM & Yarn
- Git
- Composer

## Requirements

Docker and Docker Compose installed on Linux Distro (Debian or Ubuntu).

## Installation

- Integrate easydock in your PHP app via Composer.
- You should add your Composer's vendor bin directory to your environment path.

```bash
cd /path/to/your-php-application
composer global require joglomedia/easydock-linux
easydock init && easydock import
```

- Configure your application path into `.env.easydock` file.

## Getting Started

After installation completed, if required, you could configure your `.env.easydock` file and then run this build command:

```bash
easydock build
```

During the build process EasyDock will download required Docker images. Once the build completes, you could _kick-up_ your EasyDock application by executing:

```bash
easydock up
```

### Configure Nginx and PHP-FPM

- The default Nginx server configuration `app.conf` will expose your project `/public` directory.
- If your project uses different directory structure, you should adjust the configuration in `app.conf` file accordingly.
- Your application by default accessible through localhost on port 8008 (`http://localhost:8008`)
- Currently EasyDock only support stable PHP version; 7.4 & 8.0 from `joglomedia/easydock-php` image.

The Nginx public port and PHP version could be configured inside `.env.easydock` file.

```bash
# APP PORT
APP_PORT=8008

# PHP VERSION 
PHP_VERSION=7.4
```

Everytime you change PHP version into `.env.easydock` file you have to run:

```bash
easydock reset && easydock build
```

_*PS: Resetting your EasyDock instance will delete the database data. You should backup your database before!*_

### Configure database connection

The default database connection for MySQL and PostgreSQL.

```bash
Database: easydockdb
Username: easydock
Password: secret
Root password: rootsecret
Host name: mysql ( or postgres for PostgreSQL )
```

For security reason, you should change the default database username and password configured in `.env.easydock` file.

```bash
# MYSQL / POSTGRESQL DB NAME
DB_NAME=easydockdb

# MYSQL / POSTGRESQL USER
DB_USER=easydock

# MYSQL / POSTGRESQL USER PASSWORD
DB_PASS=secret

# MYSQL ROOT PASSWORD
DB_ROOT_PASS=rootsecret

# MYSQL PORT
MYSQL_PORT=3306

# POSTGRESQL PORT
POSTGRES_PORT=5432
```

### Configure SMTP connection

By default, SMTP connection through MailHog doesn't require any username or password.

```bash
host: mailhog
port: 1025
```

## EasyDock Commands

EasyDock comes with handy command line interface to manage your Docker containers.

- Initialize EasyDock project

Execute the following command inside your application directory.

```bash
easydock init
```

- Build EasyDock images

```bash
easydock build
```

- Start EasyDock application instance

```bash
easydock up
```

- Stop EasyDock application instance

```bash
easydock stop
```

- Restart EasyDock application instance

```bash
easydock restart
```

- Take down (stop and delete) EasyDock instance

```bash
easydock down
```

- Access `ssh` into EasyDock application instance

```bash
easydock shell
```

- Get EasyDock application details

```bash
easydock info
```

- Hard reset running EasyDock instance

```bash
easydock reset
```

## Security Vulnerabilities and Bugs

If you discover any security vulnerability or any bug within easydock, please open an issue.

## Contributing

Thank you for considering contributing to this project!

## Licence

EasyDock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
