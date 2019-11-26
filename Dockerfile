FROM node:12.0-alpine

WORKDIR /usr/local/application

ENV PORT=3000

RUN apk add --no-cache tini

COPY package.json package-lock.json* yarn.lock* ./

RUN npm install -g nodemon

RUN chown -R node:node .

USER node

RUN npm install && npm cache clean --force

COPY . .

ENTRYPOINT [ "/sbin/tini", "--" ]

CMD ["node", "app.js"]