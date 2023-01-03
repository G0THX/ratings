# FROM node:14.15.0-alpine3.12
FROM node:19-alpine3.16
FROM ubuntu:20.04

WORKDIR /usr/src/app/

COPY src/ /usr/src/app/

RUN npm install

EXPOSE 8080

CMD ["node", "/usr/src/app/ratings.js", "8080"]