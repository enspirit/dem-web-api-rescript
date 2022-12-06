FROM node:19-alpine AS builder

WORKDIR /home/app

RUN apk --update --upgrade --no-cache add bash cairo-dev make pango-dev \
  gdk-pixbuf gcc g++ python3-dev musl-dev jpeg-dev zlib-dev libffi-dev curl && \
  ln -s /usr/bin/python3 /usr/bin/python

COPY package.json ./

RUN npm install

FROM node:19-alpine

RUN apk --update --upgrade --no-cache add bash

COPY ./ ./

COPY --from=builder /home/app/ ./

RUN npm run res:build

CMD ["./bin/api"]
