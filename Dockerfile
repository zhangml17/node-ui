FROM node:11.3-alpine
MAINTAINER zhangml17

ADD ./node-ui/ /

WORKDIR  /node-ui

#install express
RUN npm install -g express@4.*
RUN npm install -g express-generator
RUN npm install 

EXPOSE 3000

ENTRYPOINT  ["npm", "start"]
