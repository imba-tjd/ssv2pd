# ShadowSocks-V2Ray-Plugin-Docker

The Dockerfile is simply added `ss-v2p` to its official docker image.

If you have your own server and have Docker installed. Change the password and server port in `docker-compose.yml` and use `docker-compose up -d`.

Or if you have and know how to use a K8s cluster: Build and push the docker image. Change the password and host in `ssv2pd.yml`, then `kubectl apply -f ssv2pd.yml`.

The encryption method is `aes-128-gcm`, change it in the `Dockerfile` if you want. The client plugin-opts is `host=yourhost.example.com;path=/ssv2pd`.

## Reference

* https://github.com/xiaokaixuan/ss-v2ray-plugin
* https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine
* https://github.com/shadowsocks/v2ray-plugin
