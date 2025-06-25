#!/bin/bash

echo "📦 Backing up database..."
docker exec joomla-mysql sh -c 'exec mysqldump --all-databases -uroot -pmy-secret-pw' | gzip > my-joomla.backup.sql.gz

echo "🗂 Backing up Joomla files..."
docker cp my-joomla:/var/www/html ./joomla-files-backup

echo "✅ Backup complete!"

