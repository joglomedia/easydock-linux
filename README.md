# EasyDock for Linux ;)

<p align="center">
    <img src="/.github/assets/ed_275px.png?raw=true" alt="EasyDock Logo © @andreapollastri"/>
</p>

<p align="center">
<a href="https://github.com/joglomedia/easydock-linux/releases"><img src="https://img.shields.io/github/v/tag/joglomedia/easydock-linux?label=version" alt="EasyDock Linux version"></a>
<a href="https://github.com/joglomedia/easydock-linux/network"><img src="https://img.shields.io/github/forks/joglomedia/easydock-linux.svg" alt="GitHub forks"></a>
<a href="https://github.com/joglomedia/easydock-linux/issues"><img src="https://img.shields.io/github/issues/joglomedia/easydock-linux.svg" alt="GitHub issues"></a>
<a href="https://github.com/joglomedia/easydock-linux/stargazers"><img src="https://img.shields.io/github/stars/joglomedia/easydock-linux.svg" alt="GitHub stars"></a>
<a href="https://github.com/joglomedia/easydock-linux/actions/workflows/main.yml"><img src="https://github.com/joglomedia/easydock-linux/actions/workflows/main.yml/badge.svg" alt="GitHub CI"></a>
<a href="https://raw.githubusercontent.com/joglomedia/easydock-linux/master/LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="GitHub license"></a>
</p>

<p align="center">
A fork of EasyDock for Linux. Docker LEMP stack easy integration.
Dockerize your PHP apps ;)
</p>

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

EasyDock comes with handy command line interface to manage your Docker containers. Execute the following commands inside your application directory.

- Initialize EasyDock project.

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

## Awesome People

EasyDock Linux is an open-source project licensed under the MIT license with its ongoing development made possible entirely by the support of all these smart and generous people, from code contributors to financial contributors. :purple_heart:

Thank you for considering contributing to this project!

### Project Maintainers

<table>
  <tbody>
    <tr>
        <td align="center" valign="top">
            <img width="125" height="125" src="https://github.com/joglomedia.png?s=150">
            <br>
            <strong>Edi Septriyanto</strong>
            <br>
            <a href="https://github.com/joglomedia">@joglomedia</a>
        </td>
     </tr>
  </tbody>
</table>

### Code Contributors

<a href="https://github.com/joglomedia/easydock-linux/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=joglomedia/easydock-linux" />
</a>

Made with [contributors-img](https://contrib.rocks).

### Financial Contributors

You can support us using any of the methods below:

**[Buy Me a Bottle of Milk or a Cup of Coffee](https://paypal.me/masedi) !!**

## Licence

EasyDock is open-source project licensed under the MIT license.

### Enjoy easydock ;)
