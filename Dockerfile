FROM alpine:latest

RUN apk add thttpd
COPY ./thttpd.conf /usr/local/etc/thttpd.conf

USER root
EXPOSE 80
CMD ["/usr/sbin/thttpd", "-D", "-C", "/usr/local/etc/thttpd.conf"]
