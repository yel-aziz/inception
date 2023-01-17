FROM debian:buster

RUN apt-get update -y
RUN apt-get vsftpd -y

CMD [ "vsftpd /etc/vsftpd/vsftpd.conf" ]