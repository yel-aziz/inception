FROM debian:buster

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install php7.3-fpm php7.3-mysqli -y
RUN apt-get install wget -y
RUN wget -O adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php


CMD ["php7.3", "-S", "0.0.0.0:8080", "adminer.php"]