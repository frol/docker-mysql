FROM alpine:latest
MAINTAINER Vincent Boutour <vincent.boutour@gmail.com>

COPY ./entrypoint.sh /

RUN apk --update add mariadb mysql \
 && chmod +x /entrypoint.sh \
 && addgroup mysql mysql \
 && rm -rf /var/lib/mysql \
 && mkdir -p /var/lib/mysql \
 && chown -R mysql:mysql /var/lib/mysql \
 && chown -R mysql:mysql /etc/mysql/ \
 && rm -rf /var/cache/apk/*

VOLUME /var/lib/mysql
EXPOSE 3306

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "mysqld", "--user=mysql" ]