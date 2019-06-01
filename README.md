## Dockerized JIRA v8.2 and MariaDB v10.3
------
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8.2.svg"> style="max-width:100%;"> <<img alt="MicroBadger Size" src="https://img.shields.io/microbadger/image-size/eduardevops/jira8.2.svg?style=plastic">" style="max-width:100%;">


------

![Logo](lg.png)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

## Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.26
*	Redis v5.0.5
------

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

* Use `docker-compose loggs -f` to check containers logs in real time
------
