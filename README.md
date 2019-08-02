<!-- ## Dockerized JIRA v8.3 and MariaDB v10.4 -->
<img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8.3-mariadb.svg" style="max-width:100%;"> <img alt="MicroBadger Size" src="https://img.shields.io/microbadger/image-size/eduardevops/jira8.3-mariadb/latest.svg" style="max-width:100%;">
-----

![Logo](./assets/logo.jpg)
------

# INFO!!!
####  Still working on this. All necessary comments will be provided at the very end
####  Don't use this

This is a fork of  ![This Project](https://github.com/cptactionhank/docker-atlassian-jira) <br>
If you want to use JIRA with PostgreSQL, you may want to use his project <br>
![Martin Aksel Jensen](https://github.com/cptactionhank) did a great job.

If you want to use JIRA with MariaDB use the following project. <br>
![JIRA with MySQL](https://github.com/eduardevops/dockerized-jira8.3-mysql)

------
## First things first
Before you can use this repo make sure you have [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

## Versions
*	JIRA v8.3.0
*	MariaDB v10.4.6

-----
## NGINX
Depending on your server sepcs JIRA configuration (and its work in general) can be very slow, which can cause nginx to stop working with error 504. To avoid this add proxy timeout settings to your nginx.conf or increase value of proxy_read_timeout in your reverse proxy setting

### NGINX Timeout

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

```less
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

-----
### ToDo
All names and parameters can be, and in most cases should be edited.


### Run
Clone repo to your server (I would suggest use /opt directory)
```css
sudo git clone https://github.com/eduardevops/dockerized-jira8.3-mariadb.git
```

Make sure your user is a member of Docker group
```css
usermod -aG docker <username>
```
Navigate to the project folder
```css
cd /path/to/dockerized-jira8.3-mariadb
```
Make  'docker-entrypoint.sh' file executable for others and run the composer

```css
chmod o+x docker-entrypoint.sh
docker-compose up -d
```

Check logs in real-time
```css
docker-compose logs -f
```
