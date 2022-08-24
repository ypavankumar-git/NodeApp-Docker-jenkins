FROM node:7
RUN mkdir -p /nodeApp
WORKDIR /nodeApp
COPY . /nodeApp
RUN npm install
EXPOSE 80
CMD ["npm", "run", "start"]