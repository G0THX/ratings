FROM ubuntu:18.04
# FROM node:14.15.0-alpine3.12
FROM node:19-alpine3.16
# FROM node:14-bullseye

WORKDIR /usr/src/app/

COPY src/ /usr/src/app/

RUN npm install

EXPOSE 8081

CMD ["node", "/usr/src/app/ratings.js", "8081"]
