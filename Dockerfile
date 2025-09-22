FROM mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

RUN mkdir -p /data && chown -R root:root /data
RUN mysqld --initialize-insecure --datadir=/data

ENTRYPOINT ["mysqld", "--datadir=/data"]
