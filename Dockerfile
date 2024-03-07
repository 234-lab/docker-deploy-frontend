# Stage 0, based on Node.js, to build and compile Angular
FROM node:10-alpine as node

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY ./ /app/

ARG TARGET=ng-deploy

RUN npm run ${TARGET}