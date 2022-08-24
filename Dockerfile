FROM node:7
RUN mkdir -p /nodeApp
WORKDIR /nodeAp
COPY . /nodeApp
RUN npm install
EXPOSE 80
CMD ["npm", "run", "start"]