FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#VOLUME ["/app/node_modules"]

CMD ["node", "server.js"]

#VOLUME [ "/app/feedback" ] 
#this is controlled by docker, we have no idea where it is

#docker build -t feedback-nodes .

#docker run -p 3000:80 -d --name feedback-app --rm feedback-app

#docker run -p 3000:80 -d --name feedback-app -v feedback:/app/feedback  --rm feedback-app

#run with volume tied to feedback
#docker run -p 3000:80 -d --name feedback-app -v feedback:/app/feedback  --rm feedback-app

#run with a bind mount to the file - but this will only work if node.js has been installed(I don't)
#docker run -p 3000:80 -d --name feedback-app -v feedback:/app/feedback -v $(pwd):/app --rm feedback-nodes; 

#we fix it below, -v /app/node_modules works the same as VOLUME ["/app/node_modules"]

#docker run -p 3000:80 -d --name feedback-app -v /app/node_modules -v feedback:/app/feedback -v $(pwd):/app --rm feedback-nodes; 