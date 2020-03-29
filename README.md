<p align="center">
<img width="275" alt="easydock" src="https://github.com/andreapollastri/easydock/blob/master/ed.png?raw=true">
![GitHub stars](https://img.shields.io/github/stars/andreapollastri/easydock?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/andreapollastri/easydock?label=version)
</p>

# easydock ;)
Dockerize your PHP apps in one click ;)

## Documentation

To use it:

- Run these commands in your terminal:
```
$ git clone https://github.com/andreapollastri/easydock
$ cd easydock
$ sh ed-init
```

- Configure your .env file (if you need)
(default configuration - PHP 7.4, MySql 8)

- Push your files into /application folder

- Configure your application DB connection configuration
(default configuration - username: root / password: secret / db: dockerdb / host: mysql)

- To start your Docker istance:
```
$ sh ed-start
```
- Visit http://localhost ;)

- To "SSH" into your Docker istance:
```
$ sh ed-conn
```

- To stop you Docker istance:
```
$ sh ed-stop
```

- You can hard reset your Docker istance running (All application and database data will be removed):
```
$ sh ed-reset
```

## Features
Easydock comes with ngnix, PHP, MySql, phpmyadmin, MailHog, node, npmand Composer

> PHP 7.2, PHP 7.3, PHP 7.4, MySql 5.7, MySql 8, node 13, npm 6 versions support

## Requirements
Docker, Docker Compose, (git)

## Security Vulnerabilities and Bugs
If you discover a security vulnerability or any bug within easydock, please send an e-mail to Andrea Pollastri via andrea@pollastri.dev. All security vulnerabilities and bugs will be promptly addressed.

## Contributing
Thank you for considering contributing to this project!

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
