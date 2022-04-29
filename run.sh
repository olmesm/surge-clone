#!/usr/bin/env sh

docker run --rm -it \
    -v $(pwd)/sites:/usr/share/nginx/html \
    -v $(pwd)/config/nginx/conf.d:/etc/nginx/conf.d \
    -p 80:80 nginx:alpine