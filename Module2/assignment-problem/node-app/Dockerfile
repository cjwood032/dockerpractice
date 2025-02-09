FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["node", "server.js"]

# docker run -p 8000:3000 <id> 
#runs on port 8000, runs docker port 3000