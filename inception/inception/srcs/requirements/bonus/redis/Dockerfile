FROM debian:buster

RUN apt-get update -y && apt-get install redis-server -y && apt-get install -y php7.3-fpm  php-mysql && sed -i "s/# bind 127.0.0.1/bind 0.0.0.0/" /etc/redis/redis.conf
EXPOSE 6379

CMD ["redis-server",  "--protected-mode", "no"]