FROM node:14

WORKDIR /app

COPY package*.json ./

ADD . .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]