FROM node:24
WORKDIR /usr/src/vogelbirb-homepage

COPY . .

RUN npm install

CMD ["npm", "start"]
