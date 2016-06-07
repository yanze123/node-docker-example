FROM daocloud.io/library/node

RUN mkdir -p /usr/src/app

WORKID /usr/src/app

COPY package.json /usr/src/app

RUN npm install 

COPY . /usr/src/app

EXPOSE 80

ENTRYPOINT node server.js