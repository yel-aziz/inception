FROM debian:buster

WORKDIR /var/www

RUN apt-get update
RUN apt-get install -y wget
RUN wget  http://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
RUN apt-get install -y php7.3-fpm  php-mysql
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
RUN  service php7.3-fpm start
RUN mv wordpress html


CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
