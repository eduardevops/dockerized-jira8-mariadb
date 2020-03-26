#!/bin/bash

source /path/to/dockerized-jira8-mariadb/.env.db

# Restore DB
cat /path/to/back-file/${MYSQL_DATABASE}_some-date.sql | docker exec -i $(docker ps -qf name=jira-db) /usr/bin/mysql -u website_user --default-character-set=utf8mb4 -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}
