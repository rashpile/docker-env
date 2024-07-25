#!/bin/bash

# Schedule the Backup Script with Cron
# sudo crontab -e
# 0 2 * * * /home/pkoptilin/workspace/projects/docker-env/gitea/backup_gitea.sh


# Stop the Gitea container
docker compose down

mkdir -p ~/workspace/backup

# Create a backup of the data directory
sudo tar -czvf ~/workspace/backup/gitea_backup_$(date +%F).tar.gz ./data

# Start the Gitea container
docker compose up -d