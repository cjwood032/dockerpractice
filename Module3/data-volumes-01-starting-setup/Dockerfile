FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

#ENV PORT=80

 ARG DEFAULT_PORT=80
#EXPOSE $PORT
EXPOSE $DEFAULT_PORT

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
# -v /app/node_modules this stops the npm files from being overwritten when we don't have it locally


#if we add :ro to the volume, it will make it read only -v $(pwd):/app:ro

#setting environment variables 
#docker run -p 3000:80 -d --rm --env PORT=80 --name feedback-app -v /app/node_modules -v feedback:/app/feedback -v $(pwd):/app feedback-nodes:env 