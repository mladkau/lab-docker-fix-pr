FROM node:12.1.0

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node" , "./bin/www" ]
