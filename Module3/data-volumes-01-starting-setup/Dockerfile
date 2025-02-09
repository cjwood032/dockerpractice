FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#VOLUME [ "/app/feedback" ] 
#this is controlled by docker, we have no idea where it is

CMD ["node", "server.js"]

#docker build -t feedback-app .

#docker run -p 3000:80 -d --name feedback-app --rm feedback-app

#docker run -p 3000:80 -d --name feedback-app --rm feedback-app

#run with volume tied to feedback
#docker build -t feedback-app -v feedback:/app/feedback feedback-app:volumes .