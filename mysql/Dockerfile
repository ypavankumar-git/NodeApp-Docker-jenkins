FROM mysql:latest
COPY ./sql.sql /tmp
EXPOSE 3306
CMD [ "mysqld", "--init-file=/tmp/sql.sql" ]
