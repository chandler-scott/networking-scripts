FROM alpine
RUN apk add --no-cache busybox-extras
CMD sh -c "while true; do echo 'FLAG{TELNET_HIDDEN_FLAG}' | nc -l -p 23; done"

