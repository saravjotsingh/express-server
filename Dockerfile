FROM node:20-alpine3.21

WORKDIR /express-server

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["node", "app.js"]
