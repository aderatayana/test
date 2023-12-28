FROM phusion/baseimage:bionic-1.0.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY server.js /usr/src/app/

CMD [ "node", "server" ]
CMD /startbot.sh
