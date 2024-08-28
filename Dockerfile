FROM node:18.20.4-slim

WORKDIR /usr/src/app
ENV NODE_ENV=production

COPY database.sqlite .
COPY package.json .
COPY package-lock.json .
COPY src .

RUN npm install

EXPOSE 8080
CMD ["node", "index.js"]
