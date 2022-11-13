FROM alpine AS builder
EXPOSE 3000
WORKDIR /app
RUN apk add --no-cache --update nodejs  npm
COPY . ./
RUN npm install --production


