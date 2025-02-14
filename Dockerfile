FROM node:slim

ENV PATH="$PATH:node_modules/.bin"

WORKDIR /app

COPY package*.json ./

COPY server ./server/

COPY public ./public/

COPY bin ./bin/

RUN npm ci

CMD ["bin/start.sh"]
