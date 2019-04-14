FROM alpine:latest

RUN apk add ca-certificates \
    && mkdir -m 777 /v2ray \
    && mkdir -p /etc/v2ray

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 
ENTRYPOINT  /entrypoint.sh
