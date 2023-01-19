FROM debian:buster

RUN apt-get -y update && apt-get install -y mariadb-server && apt-get install -y systemd
COPY ./conf/seter.sql /var/www/
RUN chmod 777 /var/www/seter.sql && sed -i '28s/bind-address/# bind-address/'  /etc/mysql/mariadb.conf.d/50-server.cnf \
    && sed -i '19s/#port/port/'  /etc/mysql/mariadb.conf.d/50-server.cnf && service mysql start && mysql -u root < /var/www/seter.sql


CMD [ "mysqld_safe" ]