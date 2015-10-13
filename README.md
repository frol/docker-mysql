# docker-mysql

[![](https://badge.imagelayers.io/vibioh/mysql:latest.svg)](https://imagelayers.io/?images=vibioh/mysql:latest 'Get your own badge on imagelayers.io')

Largely inspired by [MySQL official image](https://github.com/docker-library/mysql) and [Hypriot MySQL image](https://github.com/hypriot/rpi-mysql)

    docker run \
      -d \
      -p 3306:3306 \
      --name test_mysql \
      --read-only \
      -e MYSQL_ROOT_PASSWORD=s3cr3t! \
      -e MYSQL_DATABASE=test \
      -e MYSQL_USER=test \
      -e MYSQL_PASSWORD=T3st! \
      vibioh/mysql:latest
