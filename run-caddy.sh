#!/usr/bin/env sh

docker run --rm -it \
    -v $(pwd)/sites:/usr/share/caddy/html \
    -v $(pwd)/config/Caddyfile:/etc/caddy/Caddyfile \
    -p 80:80 \
    -p 2019:2019 \
    caddy:alpine