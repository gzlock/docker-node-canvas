FROM node:16-lts

RUN apt-get update -y && apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev g++ -y

RUN yarn config set registry "http://mirrors.cloud.tencent.com/npm/"

# 给sharp这个package添加国内源
RUN yarn config set sharp_binary_host "https://npm.taobao.org/mirrors/sharp"
RUN yarn config set sharp_libvips_binary_host "https://npm.taobao.org/mirrors/sharp-libvips"

# 给canvas这个package添加国内源
RUN yarn config set canvas_binary_host_mirror "https://npm.taobao.org/mirrors/node-canvas-prebuilt"

CMD ["node"]
