# gallery-php-docker

A docker compose for Gallery PHP project on gallery3-docker creating:

- A MariaDB database container called *db*
- A gallery app container called *gallery*

```bash
mkdir myproject
cd myproject
git clone https://github.com/chirale/gallery-php-docker.git
```

## Create .env

```python
MYSQL_ROOT_PASSWORD=myrootpw
MYSQL_DATABASE=gallery3
MYSQL_USER=gallery3
MYSQL_PASSWORD=mygallery3pw
G3_PASSWORD=g3pw
DB_PREFIX=
SITE_DOMAIN=
SITE_PROTOCOL=http
```

then run docker-compose config to see applied env vars:

```bash
cd gallery-php-docker
docker-compose config
```

then create the compose network and containers:

```bash
docker-compose up --no-start
```

and last:

```bash
docker-compose start
```

## Load database from previous install

```bash
mkdir database/initdb.d
cp path/to/my/dump.sql database/initdb.d/init.db
```

then do the steps above but do not install gallery (already in db).

## Install

```bash
WEB_CONTAINER=gallery-php-docker_gallery_1 && docker container exec -it $WEB_CONTAINER php installer/index.php
```

## Scripts

- copymodule: script example to copy modules from external directory to gallery container
- destroy: example script to clean up a gallery-php-docker diretory from data
