<p align="center">
<img width="275" alt="easydock" src="https://github.com/andreapollastri/easydock/blob/master/easydock/utils/ed.png?raw=true">
</p>

# easydock ;)
Dockerize your PHP apps in one click ;)

![GitHub stars](https://img.shields.io/github/stars/andreapollastri/easydock?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/andreapollastri/easydock?label=version)

# Coming soon...
- PHP 8 Support
- New installation logic (as Composer vendor)
- CS / PHPunit / PHPstan / xDebug preconfiguration
- New CLI interface

## Documentation

To use it:

- Run these commands in your terminal:
```
$ sh ed-init
```

- Configure your .env file (if you need) (default - PHP7.4, MySql8)

- Everytime you change PHP version into .env file you have to run:
```
$ sh ed-build
```

- Push your files into /application folder

- Config your app DB conn (default - user: root / pass: secret / db: dockerdb / host: mysql - host: redis for Redis)

- Config your app SMTP conn (default - host: mailhog / port: 1025 / no user or pass are required)

- To start your Docker istance:
```
$ sh ed-start
```

- To "SSH" into your Docker istance:
```
$ sh ed-conn
```

- To stop you Docker istance:
```
$ sh ed-stop
```

- You can get application info using:
```
$ sh ed-info
```

- If you have any permissions issue, you can try to force it with:
```
$ sh ed-owner
```

- You can hard reset your Docker istance running (All application and database data will be removed):
```
$ sh ed-reset
```

## Features
Easydock comes with ngnix, PHP, MySql, Redis, phpmyadmin, MailHog, node.js, npm, Git and Composer
> PHP 7.2, PHP 7.3, PHP 7.4, MySql 5.7, MySql 8, node 13, npm 6 versions support

## Requirements
Docker, Docker Compose, Linux based shell, (git)

## Links
- Docker Desktop https://www.docker.com/products/docker-desktop
- Windows WLS https://docs.microsoft.com/en-us/windows/wsl/install-win10

## Security Vulnerabilities and Bugs
If you discover a security vulnerability or any bug within easydock, please send an e-mail to andrea@pollastri.dev. All security vulnerabilities and bugs will be promptly addressed.

## Contributing
Thank you for considering contributing to this project!

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
