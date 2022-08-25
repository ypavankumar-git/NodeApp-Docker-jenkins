FROM node:alpine
RUN mkdir -p /nodeApp
WORKDIR /nodeApp
COPY /routes /nodeApp
RUN npm install
CMD [ "node", "nodeServer.js" ]