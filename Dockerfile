FROM node:18.14.0-alpine

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

ENV NODE_ENV=production

COPY . .
RUN npm run build

# EXPOSE 80
USER node
CMD ["node","./dist/index.js"]
