FROM node:10.16.0-alpine

WORKDIR /app

COPY package*.json ./

ADD . .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]