# Easydock
Dockerize your PHP apps in one click ;)

## Documentation

To use it:

- Run these commands in your terminal:
```
$ git clone https://github.com/andreapollastri/easydock
$ cd easydock/easydock
$ docker-compose up
```
- Visit http://localhost
- Push your web files into /public (as required by Laravel, ReactJS, ...)
- In you need MySql DB use access data written in /easydock/.env file
- If you need you can customize /easydock/.env parameters and re-run the project

## Laravel integration
- Download Easydock
- Extract package and copy easydock folder (not public folder) into your Laravel project root
- Run these commands in your terminal from your Laravel project root:
```
$ cd easydock
$ docker-compose up
```
- Visit http://localhost

## Features
Easydock comes with ngnix, PHP (last stable version) and MySql 5.7

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
If you discover a security vulnerability within Easydock, please send an e-mail to Andrea Pollastri via mail@andreapollastri.net. All security vulnerabilities will be promptly addressed.

## Licence
Easydock is open-source software licensed under the MIT license.

### Enjoy Easydock :)
