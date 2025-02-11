FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

# create 2 containers one named mongodb and one named favorites-node. Then favorites-node will access it and correctly reference mongo-db