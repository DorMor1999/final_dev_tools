#!/bin/bash

echo "📂 Restoring Joomla files..."
docker cp ./joomla-files-backup/. my-joomla:/var/www/html/

echo "📥 Restoring database..."
gunzip < my-joomla.backup.sql.gz | docker exec -i joomla-mysql sh -c "exec mysql -uroot -pmy-secret-pw --force joomla_db"

echo "🔁 Restarting Joomla..."
docker restart my-joomla

echo "✅ Restore complete!"

