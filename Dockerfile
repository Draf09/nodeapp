FROM node:15.5.0-alpine3.10
COPY package*.json /usr/src/app/
WORKDIR /usr/src/app
#COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3002
CMD ["node", "app.js"]

