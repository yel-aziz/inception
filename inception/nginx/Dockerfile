FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y nginx openssl
RUN mkdir /var/www/html/about
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=localhost"
COPY /conf/nginx.conf /etc/nginx/
# RUN sed -i 's/127.0.0.1.*/127.0.0.1 yassir;/' /etc/hosts
COPY /index/index1.html /var/www/html
COPY /index/index2.html /var/www/html
COPY /index/about/about.html /var/www/html/about
COPY /index/about/about2.html /var/www/html/about
RUN apt install wget -y
RUN wget https://github.com/nginx/nginx/raw/master/conf/mime.types
RUN cp mime.types /etc/nginx/


EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]