#!/bin/bash

docker run -d \
  --name my-joomla \
  --network joomla-net \
  -e JOOMLA_DB_HOST=joomla-mysql \
  -e JOOMLA_DB_USER=joomla_user \
  -e JOOMLA_DB_PASSWORD=joomla_pass \
  -e JOOMLA_DB_NAME=joomla_db \
  -p 8080:80 \
  joomla

