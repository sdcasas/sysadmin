FROM alpine

EXPOSE 22

RUN apk add --no-cache openssh
RUN echo 'root:mypassword' | chpasswd
COPY ./sshd_config /etc/ssh/
COPY ./start.sh /usr/bin/

# Default is to run the OpenSSH server
CMD ["/usr/bin/start.sh"]
