FROM node:alpine

LABEL maintainer="tonywshannon@gmail.com"

EXPOSE 8080
VOLUME /app

WORKDIR /app
RUN npm install --quiet -g @vue/cli