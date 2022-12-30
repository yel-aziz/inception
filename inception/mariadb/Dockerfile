FROM debian:buster

RUN apt-get -y update
RUN apt-get install -y mariadb-server
RUN apt-get install -y systemd
COPY ./setdata/seter.sql /var/www/
RUN chmod 777 /var/www/seter.sql
RUN sed -i '28s/bind-address/# bind-address/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i '19s/#port/port/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -u root < /var/www/seter.sql

CMD ["mysqld_safe"]