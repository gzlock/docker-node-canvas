FROM node:alpine

MAINTAINER gzlock gzlock@mail.com

RUN apk add --no-cache \
    build-base \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    bash \
    imagemagick

CMD ["node"]
