FROM node:19-alpine AS builder

WORKDIR /home/app

RUN apk --update --upgrade --no-cache add bash cairo-dev make pango-dev \
  gdk-pixbuf gcc g++ python3-dev musl-dev jpeg-dev zlib-dev libffi-dev curl

COPY package.json ./

RUN npm install

COPY ./ ./

RUN npm run res:build

FROM node:19-alpine

RUN apk --update --upgrade --no-cache add bash

WORKDIR /home/app

COPY --from=builder /home/app/ ./

CMD ["npm", "run", "start"]
