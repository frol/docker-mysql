FROM alpine:latest
MAINTAINER Vincent Boutour <vincent.boutour@gmail.com>

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --update add mariadb mysql \
 && chmod a+x /docker-entrypoint.sh \
 && addgroup mysql mysql \
 && rm -rf /var/lib/mysql \
 && mkdir -p /var/lib/mysql \
 && rm -rf /var/cache/apk/*

VOLUME /var/lib/mysql
EXPOSE 3306

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "mysqld", "--user=mysql" ]