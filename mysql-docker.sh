#!/bin/bash

docker run -d \
  --name joomla-mysql \
  --network joomla-net \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  -e MYSQL_DATABASE=joomla_db \
  -e MYSQL_USER=joomla_user \
  -e MYSQL_PASSWORD=joomla_pass \
  -p 3306:3306 \
  mysql:8.0

