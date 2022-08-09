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


# FROM python:3.9.12-slim-bullseye
# ADD licenses /licenses
# ADD locust-tasks /locust-tasks
# RUN pip install -r /locust-tasks/requirements.txt
# EXPOSE 5557 5558 8089
# RUN chmod 755 /locust-tasks/run.sh
# ENTRYPOINT ["/locust-tasks/run.sh"] 