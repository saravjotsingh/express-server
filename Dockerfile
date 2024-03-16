FROM --platform=linux/amd64 node:18-alpine

WORKDIR /express-server

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["node", "app.js"]
