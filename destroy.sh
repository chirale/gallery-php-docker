
#!/bin/bash
# Destroy and recreate
set -e
sudo chmod 777 gallery-var
rm -Rf gallery-var/*
docker-compose down && docker-compose build && docker-compose up --no-start && docker-compose start
sleep 60
docker container exec -it gallery-php-docker_gallery_1 php installer/index.php
