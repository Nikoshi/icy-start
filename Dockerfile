FROM node:current-alpine as node

WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build

FROM nginx:mainline-alpine

COPY --from=node /app/dist/ /usr/share/nginx/html
