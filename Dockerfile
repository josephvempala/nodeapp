FROM node:alpine
RUN apk update 
RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app
ENV HOST=0.0.0.0
ENV PORT=3000
#Alternatively, it is more secure to use a .env file -> docker run --env-file dev.env BUILD_IMG
COPY package*.json ./
RUN npm install
COPY ./src ./src
EXPOSE $PORT
CMD ["npm", "start"]
