FROM node:16
WORKDIR /usr/code
COPY package*.json ./
RUN npm install
RUN npm install nodemon -g
COPY . .
EXPOSE 9000
CMD ["node", "server.js"]
