FROM node:12-alpine AS build
RUN apk add --no-cache --virtual .gyp python make g++
WORKDIR /app
ENV NODE_ENV=production
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile --non-interactive
COPY . .
RUN yarn clean && yarn build

FROM nginxinc/nginx-unprivileged
COPY --from=build --chown=nginx:nginx /app/default.conf /etc/nginx/conf.d
COPY --from=build --chown=nginx:nginx /app/public /usr/share/nginx/html
