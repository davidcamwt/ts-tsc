FROM node:16-alpine3.14

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 4000

CMD ["npm", "start"]