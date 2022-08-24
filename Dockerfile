FROM node:7
RUN mkdir -p /nodeApp
WORKDIR /nodeApp
COPY . /nodeApp
RUN npm install
CMD ["npm", "run", "start", "-d"]