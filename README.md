<p align="center">
<img width="275" alt="easydock" src="https://github.com/andreapollastri/easydock/blob/master/easydock/utils/ed.png?raw=true">
</p>

# easydock ;)
Dockerize your PHP apps ;)

![GitHub stars](https://img.shields.io/github/stars/andreapollastri/easydock?style=social)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/andreapollastri/easydock?label=version)

## Features
Easydock comes with ngnix, PHP, MySql, Redis, phpmyadmin, MailHog, node.js, npm, Git, Composer, Supervisord and Cron
> PHP 5.x, 7.x, 8.x, MySql 5.7, MySql 8, node 14, npm 6 versions support

## Requirements
Docker Desktop on Mac OSx El Capitan or newer

## Documentation
To use it:

- Download it:
```
$ git clone https://github.com/andreapollastri/easydock.git
```

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

- You can reset your Docker istance running:
```
$ sh ed reset
```

## Security Vulnerabilities and Bugs
If you discover a security vulnerability or any bug within easydock, please send an e-mail to andrea@pollastri.dev. All security vulnerabilities and bugs will be promptly addressed.

## Contributing
Thank you for considering contributing to this project!

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy easydock ;)
