#!/bin/bash

echo "🧨 Removing containers..."
docker rm -f my-joomla joomla-mysql

echo "🧹 Removing network..."
docker network rm joomla-net

echo "🗑 Removing backups..."
rm -rf my-joomla.backup.sql.gz joomla-files-backup

echo "✅ Cleanup complete!"

