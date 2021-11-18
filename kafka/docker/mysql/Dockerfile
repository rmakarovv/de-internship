FROM mariadb:10.6.4

MAINTAINER Provectus Team

ADD schema.sql /docker-entrypoint-initdb.d
ADD binlog.cnf /etc/mysql/conf.d

EXPOSE 3306