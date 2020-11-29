# gallery-php-docker
A docker compose for Gallery PHP project.


## create .env
~~~
MYSQL_ROOT_PASSWORD=myrootpw
MYSQL_DATABASE=gallery3
MYSQL_USER=gallery3
MYSQL_PASSWORD=mygallery3pw
G3_PASSWORD=g3pw
DB_PREFIX=
SITE_DOMAIN=
SITE_PROTOCOL=http
~~~

then run docker-compose config to see applied env vars

## install

~~~
WEB_CONTAINER=gallery-php-docker_gallery_1 && docker container exec -it $WEB_CONTAINER php installer/index.php
~~~
