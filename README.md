# EasyDock for Linux ;)

![EasyDock for Linux](ed_275px.png)

A fork of EasyDock for Linux. Docker LEMP stack easy integration.

Dockerize your PHP apps ;)

![GitHub stars](https://img.shields.io/github/stars/joglomedia/easydock-linux?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/joglomedia/easydock-linux?label=version)

## Features

Easydock comes with:

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

### Configure Nginx and PHP-FPM

- The default Nginx server configuration (app.conf) will expose your project `/public` folder.
- If your project uses different directory structure, you should adjust the configuration and update the file accordingly.
- Your application by default accessible through localhost on port 8008 (`http://localhost:8008`)
- Supported PHP version: 7.4 & 8.0

```bash
# APP PORT
APP_PORT=8008

# PHP VERSION 
PHP_VERSION=7.4
```

### Configure database connection

The default database connection for MySQL and PostgreSQL.

```bash
Username: easydock
Password: secret
Database: easydockdb
Host: mysql ( or postgres for PostgreSQL )
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

### To start your app instance

```bash
easydock up
```

### To stop your app instance

```bash
easydock stop
```

### To restart your app instance

```bash
easydock restart
```

### To stop and delete your app instance

```bash
easydock down
```

### To "SSH" into your app instance

```bash
easydock shell
```

### You can get application info using

```bash
easydock info
```

### You can reset your running instance

```bash
easydock reset
```

### Everytime you change PHP version into `.env.easydock` file you have to run

```bash
easydock reset && easydock build
```

_*PS: Resetting your EasyDock instance will delete the database data*_

## Security Vulnerabilities and Bugs

If you discover any security vulnerability or any bug within easydock, please open an issue.

## Contributing

Thank you for considering contributing to this project!

## Licence

Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
