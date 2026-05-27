FROM node:18

WORKDIR /app

COPY bookmyshow-app/package*.json ./

RUN npm install

COPY bookmyshow-app .

EXPOSE 3000

CMD ["npm", "start"]

