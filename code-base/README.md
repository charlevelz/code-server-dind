# code-server-dind
> [VS Code](https://github.com/Microsoft/vscode) in the browser with Docker !

[![Build Status](https://ci.crystalyx.net/api/badges/Xefir/code-server-dind/status.svg)](https://ci.crystalyx.net/Xefir/code-server-dind)
[![Docker Hub](https://img.shields.io/docker/pulls/xefir/code-server-dind)](https://hub.docker.com/r/xefir/code-server-dind)

This is based on [code-server](https://github.com/coder/code-server)

## Getting started

Run :

`docker run --privileged -p 8080:8080 -v $(pwd)/coder:/home/coder xefir/code-server-dind`

Or with docker-compose :

```
  code-server-dind:
    image: xefir/code-server-dind
    privileged: true
    ports:
      - "8080:8080"
    volumes:
      - ./coder:/home/coder
```

## Note about security

To be able to use Docker in Docker, this container use an old trick from [docker-dind](https://github.com/jpetazzo/dind) and must be run as privileged mode.

This container is provided as is, use it at your own risks.
