FROM node:10.16.0-alpine

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD . .

RUN npm -g npm@latest && npm install

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "run", "dev"]