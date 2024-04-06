#
# 构建前端
#

FROM node:lts-bullseye AS builder
ARG BASE_PATH='/root/genish-picker'
WORKDIR "${BASE_PATH}/frontend"

# 编译前端
COPY /frontend ./
RUN npm install && npm run build

FROM nginx:alpine
COPY /Genshin-Impact-Wish-Simulator/.vercel/output/static /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
