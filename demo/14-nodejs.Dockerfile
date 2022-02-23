FROM node:16

WORKDIR /usr/src/app
COPY tanzu-build-service-sample-apps/sample-apps/nodejs/ ./

RUN npm install

EXPOSE 8080

CMD [ "node", "server.js" ]