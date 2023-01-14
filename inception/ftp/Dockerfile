FROM debian:buster

WORKDIR /etc
RUN apt-get update
RUN apt-get install vsftpd -y
RUN cp vsftpd.conf vsftpd.conf.orig
RUN mkdir /etc/vsftpd
COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN mv vsftpd.conf /etc/vsftpd
RUN touch /etc/vsftpd/vsftpd.chroot_list

#  CMD ["vsftpd /etc/vsftpd/vsftpd.conf"]
