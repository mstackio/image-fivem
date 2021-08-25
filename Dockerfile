FROM mstackio/alpine

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/4394-572b000db3f5a323039e0915dac64641d1db408e/fx.tar.xz| tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
