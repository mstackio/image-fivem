# mstack Fivem server

[![Build Status](https://travis-ci.com/mstackio/image-fivem.svg?branch=master)](https://travis-ci.com/mstackio/image-fivem)

## Quickstart

```yml
fivem:
  image: mstackio/fivem

  stdin_open: true
  tty: true

  volumes:
    # You must provide a server config file
    - ./server.cfg:/srv/server.cfg

    - ./resources:/srv/resources
    - ./cache:/srv/cache

  ports:
    - "30120:30120/tcp"
    - "30120:30120/udp"
```