FROM debian:buster


RUN mkdir -p /var/www/html
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wget  http://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
RUN cp -Rf wordpress/* /var/www/html/
RUN apt-get install -y php7.3-fpm  php-mysql
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
# RUN rm  /var/www/html/wp-config.php
RUN  service php7.3-fpm start
RUN chown -Rf www-data:www-data /var/www/html


COPY ./script/script.sh .
RUN  chmod 777 script.sh
# RUN ./script.sh



ENTRYPOINT ["sh", "./script.sh"]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
