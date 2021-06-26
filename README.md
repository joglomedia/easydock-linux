# EasyDock for Linux ;)

![EasyDock for Linux](ed_275px.png)

A fork of EasyDock for Linux. Docker LEMP stack easy integration.

Dockerize your PHP apps ;)

![GitHub stars](https://img.shields.io/github/stars/joglomedia/easydock-linux?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/joglomedia/easydock-linux?label=version)

## Features

Easydock comes with:

- Nginx
- PHP (PHP-FPM 5.x, 7.x and 8.x)
- MySQL (latest version of MariaDB)
- Redis
- ~~phpmyadmin~~ Adminer (Lightweight MySQL admin)
- MailHog
- Node.js, NPM & Yarn
- Git
- Composer

## Requirements

Docker and Docker Compose installed on Linux Distro (Debian, Ubuntu)

## Installation

- Integrate easydock in your PHP app via Composer.
- You should add your Composer's vendor bin directory to your environment path.

```bash
cd /path/to/your-php-application
composer global require joglomedia/easydock-linux
easydock init && easydock import
```

- Configure your application path into `.env.easydock` file.

## Getting started

- After installation, if you need, configure your `.env.easydock` file and run:

```bash
easydock build
```

### Config your app DB connection (default)

```bash
user: root
pass: secret
db: dockerdb
host: mysql ( or redis for Redis )
```

### Config your app SMTP conn (default - no user or pass are required)

```bash
host: mailhog
port: 1025
```

- The default Nginx config (app.conf) will expose your project `/public` folder.
- If your project is using different directory structure, you should adjust the configurations and update the file accordingly.

### To start your Docker istance

```bash
easydock up
```

### To stop your Docker istance

```bash
easydock stop
```

### To restart your Docker istance

```bash
easydock restart
```

### To stop and delete your Docker istance

```bash
easydock down
```

### To "SSH" into your Docker istance

```bash
easydock shell
```

### You can get application info using

```bash
easydock info
```

### You can reset your Docker istance running

```bash
easydock reset
```

### Everytime you change PHP version into `.env.easydock` file you have to run:

```bash
easydock reset && easydock build
```

_*NB: Database data will be removed*_

## Security Vulnerabilities and Bugs

If you discover any security vulnerability or any bug within easydock, please open an issue.

## Contributing

Thank you for considering contributing to this project!

## Licence

Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
