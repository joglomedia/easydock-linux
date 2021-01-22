<p align="center">
<img width="275" alt="easydock" src="https://github.com/andreapollastri/easydock/blob/master/easydock/utils/ed.png?raw=true">
</p>

# easydock ;)
Dockerize your PHP apps in one click ;)

![GitHub stars](https://img.shields.io/github/stars/andreapollastri/easydock?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/andreapollastri/easydock?label=version)

## Documentation

To use it:

- Run these commands in your terminal:
```
$ sh ed env
```

- Configure your .env file (if you need) (default - PHP7.4, MySql8)

- Everytime you change PHP version into .env file you have to run:
```
$ sh ed setup
```

- Push your files into /application folder

- Config your app DB conn (default - user: root / pass: secret / db: dockerdb / host: mysql - host: redis for Redis)

- Config your app SMTP conn (default - host: mailhog / port: 1025 / no user or pass are required)

- To start your Docker istance:
```
$ sh ed up
```

- To "SSH" into your Docker istance:
```
$ sh ed conn
```

- To stop you Docker istance:
```
$ sh ed down
```

- You can get application info using:
```
$ sh ed info
```

- You can hard reset your Docker istance running (All application and database data will be removed):
```
$ sh ed reset
```

## Features
Easydock comes with ngnix, PHP, MySql, Redis, phpmyadmin, MailHog, node.js, npm, Git and Composer
> PHP 5.x, 7.x, 8.x, MySql 5.7, MySql 8, node 14, npm 6 versions support

## Requirements
Docker, Docker Compose, OSx, (Git)

## Links
- Docker Desktop https://www.docker.com/products/docker-desktop

## Security Vulnerabilities and Bugs
If you discover a security vulnerability or any bug within easydock, please send an e-mail to andrea@pollastri.dev. All security vulnerabilities and bugs will be promptly addressed.

## Contributing
Thank you for considering contributing to this project!

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
