## Dockerized JIRA v8.2 and MariaDB v10.4
------
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8.2.svg" style="max-width:100%;"> <img alt="MicroBadger Size" src="https://img.shields.io/microbadger/image-size/eduardevops/jira8.2.svg?style=plastic" style="max-width:100%;">


------

![Logo](lg.png)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
####  Don't use this
------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

## Versions
*	JIRA v8.2.2
*	MariaDB v10.4.6
------
## NGINX
Depending on your server sepcs JIRA configuration (and its work in general) can be very slow, which can cause nginx to stop working with error 504. To avoid this add proxy timeout settings to your nginx.conf or increase value of proxy_read_timeout in your reverse proxy setting

#### nginx.conf

```javascript
  proxy_connect_timeout       600;
  proxy_send_timeout          600;
  proxy_read_timeout          600;
  send_timeout                600;
```

## Content
Name| Type | Description
------------        |         ------------- |         -------------
Dockerfile          | File | As it says, Dockerfile from which image will be build
docker-compose.yml  | File | Main file of the project that builds and links containers
web                 | Folder | Web folder where you need to copy your web project
.env.db             | File| This file will contain your database root password as well as new database name with its owner user and password
.env.redis          | File | Redis container environments
lg.png              | File | This repo's logo. Will be removed soon
------
