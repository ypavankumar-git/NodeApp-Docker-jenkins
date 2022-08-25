FROM mysql:latest
COPY /mysql/sql.sql /tmp
EXPOSE 3306
CMD [ "mysqld", "--init-file=/tmp/sql.sql" ]
