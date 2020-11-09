FROM SNYK-DEBIAN9-APT-568929

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node" , "./bin/www" ]
