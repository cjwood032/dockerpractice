FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

#docker build -t goals-react .
#docker run --name goals-frontend --rm -it -d -p 3000:3000 goals-react
#docker network create goals-net