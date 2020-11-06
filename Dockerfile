FROM node:14.13.0

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node" , "./bin/www" ]
