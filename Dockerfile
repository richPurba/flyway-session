FROM mysql:8.0 as mysql

SHELL ["/bin/bash", "-c"]

# Environment variables
ENV MYSQL_DATABASE: test_db
RUN ln -fs /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
COPY mysql-init-script/init.sql /docker-entrypoint-initdb.d/
