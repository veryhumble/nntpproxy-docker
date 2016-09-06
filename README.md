# nntpproxy-docker
A dockerized nntp proxy

Use as follows:

```
docker run -it  \
-e NNTP_USERNAME=<your_password> \
-e NNTP_PASSWORD=<your_password> \
-e USENET_HOST=<newsserver_url> \
-e USENET_PORT=563 \
nntpproxy
```
