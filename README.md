<!-- ## Dockerized JIRA v8.2 and MariaDB v10.4 -->
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8.2.svg" style="max-width:100%;"> <img alt="MicroBadger Size" src="https://img.shields.io/microbadger/image-size/eduardevops/jira8.2.svg?style=plastic" style="max-width:100%;">
-----
Logo             |  Linux
:-------------------------:|:-------------------------:
![Logo](./assets/logo.jpg)  | ![Linux](./assets/unix.jpg)

<!-- ![Logo](./assets/logo.jpg) -->
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
####  Don't use this
------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

## Versions
*	JIRA v8.2.4
*	MariaDB v10.4.6

-----
## NGINX
Depending on your server sepcs JIRA configuration (and its work in general) can be very slow, which can cause nginx to stop working with error 504. To avoid this add proxy timeout settings to your nginx.conf or increase value of proxy_read_timeout in your reverse proxy setting

#### nginx.conf

```bash
  proxy_connect_timeout       600;
  proxy_send_timeout          600;
  proxy_read_timeout          600;
  send_timeout                600;
```
-----

------
## Content

### Tree

```bash
.
├── .env.db
├── .env.jira
├── Dockerfile
├── assets
│   └── logo.jpg
├── backup
│   ├── db_backup.sh
│   ├── db_restore.sh
│   └── jira_backup.sh
├── conf
│   ├── apache-reverse-proxy.conf
│   ├── httpd.conf
│   └── nginx-reverse-proxy.conf
├── docker-compose-alter.yml
├── docker-compose.yml
└── docker-entrypoint.sh
```

### Description

Name | Description
------------------- | -------------
Dockerfile          | As it says, Dockerfile from which image will be build
docker-compose.yml  | Main file of the project that builds and links containers
web                 | Web folder where you need to copy your web project
.env.db             | MySQL Database root password. As well as new Database user and password
.env.redis          | Redis container environments

------
