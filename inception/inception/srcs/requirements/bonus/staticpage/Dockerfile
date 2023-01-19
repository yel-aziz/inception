FROM debian:buster

RUN apt-get update -y && apt-get install -y nginx openssl
RUN mkdir /var/www/html/about
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=localhost"
COPY /conf/nginx.conf /etc/nginx/
COPY ./build /var/www/html
RUN apt install wget -y && wget https://github.com/nginx/nginx/raw/master/conf/mime.types && cp mime.types /etc/nginx/

EXPOSE 100

CMD ["nginx", "-g", "daemon off;"]