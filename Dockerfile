FROM node:24
WORKDIR /usr/src/vogelbirb-homepage

COPY . .

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
