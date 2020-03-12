# Easydock
Dockerize your PHP apps in one click ;)

## Documentation

To use it:

- Run these commands in your terminal:
```
$ git clone https://github.com/andreapollastri/easydock
$ cd easydock
$ docker-compose up -d
```
- Visit http://127.0.0.1

- Push your files into /public
(You can also integrate easydock into Laravel or other PHP framework root)

- Configure your application DB connection configuration
(username: root / password: secret / db: dockerdb / host: mysql)

- If you need you can "SSH" into your Docker with:
```
docker-compose exec app COMAND

//eg. in Laravel: docker-compose exec app php artisan migrate
```

- To stop you docker istance:
```
$ docker-compose down
```

## Features
Easydock comes with ngnix, PHP 7.2, MySql 5.7, phpmyadmin and Composer

## Requirements
Docker, Docker Compose, (GIT)

## Useful Docker CLI basic and simple commands
- docker-compose up
- docker-compose down
- docker system prune -a
- docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)

## Contributing
Thank you for considering contributing to this project!

## Security Vulnerabilities
If you discover a security vulnerability within Easydock, please send an e-mail to Andrea Pollastri via andrea@pollastri.dev. All security vulnerabilities will be promptly addressed.

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy Easydock :)
