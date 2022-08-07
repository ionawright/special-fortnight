FROM node:18.4.0
# base image 
WORKDIR /
COPY package*.json ./
RUN npm install
# executed during the build of the image
COPY . .
# bundle the app source
CMD ["npm", "start"]
# only when the container is created inside the image