FROM node:latest

RUN sudo apt-get --no-cache \
    build-base \
    g++ \
    cairo-dev \
    jpeg-dev \
    pango-dev \
    bash \
    imagemagick

CMD ["node"]
