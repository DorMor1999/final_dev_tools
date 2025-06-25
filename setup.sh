#!/bin/bash

echo "🔧 Creating network..."
docker network create joomla-net

echo "🐬 Starting MySQL container..."
docker run -d \
  --name joomla-mysql \
  --network joomla-net \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  -e MYSQL_DATABASE=joomla_db \
  -e MYSQL_USER=joomla_user \
  -e MYSQL_PASSWORD=joomla_pass \
  -p 3306:3306 \
  mysql:8.0

sleep 10

echo "🌐 Starting Joomla container..."
docker run -d \
  --name my-joomla \
  --network joomla-net \
  -e JOOMLA_DB_HOST=joomla-mysql \
  -e JOOMLA_DB_USER=joomla_user \
  -e JOOMLA_DB_PASSWORD=joomla_pass \
  -e JOOMLA_DB_NAME=joomla_db \
  -p 8080:80 \
  joomla

echo "✅ Joomla and MySQL are up!"

