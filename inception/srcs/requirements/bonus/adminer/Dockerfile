FROM debian:buster

WORKDIR /usr/src
RUN apt-get update && apt-get install php7.3-fpm php7.3-mysqli -y \
    && apt-get install wget -y \
    && wget -O adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

CMD ["php7.3", "-S", "0.0.0.0:200", "adminer.php"]