## Dockerized JIRA v8.2 and MariaDB v10.3
------
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8.2.svg" style="max-width:100%;"> <img alt="MicroBadger Size" src="https://img.shields.io/microbadger/image-size/eduardevops/jira8.2.svg?style=plastic" style="max-width:100%;">


------

![Logo](lg.png)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

## Versions
*	JIRA v8.2.2
*	MariaDB v10.3.16
------
## NGINX
Depending on your server sepcs JIRA configuration (and its work in general) can be very slow, which can cause nginx o stop working with error 504. To avoid this you may want to use one of 3 options.

1.  Add proxy times to your nginx.conf file.
    ```bash
      proxy_connect_timeout       600;
      proxy_send_timeout          600;
      proxy_read_timeout          600;
      send_timeout                600;
    ```
2.  Create timeout.conf file inside conf.d folder.
3.  Increase proxy_read_timeout

## Content
Name| Description
------------ | -------------
Dockerfile | As it says, Dockerfile from which image will be build
docker-compose.yml  | Main file of the project that builds and links containers
web | Web folder where you need to copy your web project
.env.db | This file will contain your database root password as well as new database name with its owner user and password
.env.redis | Redis container environments
lg.png | This repo's logo. Will be removed soon
------
