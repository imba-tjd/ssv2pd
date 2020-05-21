FROM shadowsocks/shadowsocks-libev

ENV ARGS="--plugin v2ray-plugin_linux_amd64 --plugin-opts server;path=/ssv2pd"
ENV METHOD=aes-128-gcm

ARG V2P_VERSION=v1.3.0
USER root
RUN apk add --no-cache curl \
  && curl -sL https://github.com/shadowsocks/v2ray-plugin/releases/download/$V2P_VERSION/v2ray-plugin-linux-amd64-$V2P_VERSION.tar.gz | tar zxC /usr/bin/ \
  && apk del curl
USER nobody
