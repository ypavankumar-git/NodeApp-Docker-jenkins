FROM node:7
RUN mkdir -p /nodeApp
WORKDIR /nodeApp
COPY . /nodeApp
RUN npm install
EXPOSE 8081
CMD ["pm2", "start", "server.js"]