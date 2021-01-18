FROM node:15.5.0-alpine

RUN mkdir /app

WORKDIR /app

COPY yarn.lock package.json test.js ./

RUN apk update && apk add nodejs yarn g++ make python chromium

RUN yarn
CMD ["yarn", "start"]
