FROM node:11.3-alpine
MAINTAINER zhangml17

WORKDIR  /node-ui

#install express
RUN npm install -g express@4.*
RUN npm install -g express-generator

ADD ./node-ui/ /

RUN npm install 

EXPOSE 3000

ENTRYPOINT  ["npm", "start"]
