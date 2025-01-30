FROM alpine:3.19

RUN apk upgrade && apk update
RUN apk add lftp vsftpd

RUN adduser -D bobby
RUN echo bobby:password_master | chpasswd 

RUN \
        echo "listen=YES" > /etc/vsftpd/vsftpd.conf; \
        echo "local_enable=YES" >> /etc/vsftpd/vsftpd.conf; \
        echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf; \
        echo "anonymous_enable=NO" >> /etc/vsftpd/vsftpd.conf; \
        echo "chroot_local_user=YES" >> /etc/vsftpd/vsftpd.conf; \
        echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf; \
        echo "seccomp_sandbox=NO" >> /etc/vsftpd/vsftpd.conf;          \ 
        echo "hi" > "/home/bobby/hi"

CMD vsftpd /etc/vsftpd/vsftpd.conf

EXPOSE 21
