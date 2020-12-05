#!/bin/bash
MODULE_NAME=$1
CONTAINER_NAME=gallery-php-docker_gallery_1
REPODIR=~/repo/
docker cp $REPODIR/gallery3-contrib/3.0/modules/$MODULE_NAME/. $CONTAINER_NAME:/var/www/modules/$MODULE_NAME
