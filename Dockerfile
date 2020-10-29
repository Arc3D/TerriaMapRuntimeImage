# Version:0.0.1
FROM node:latest
RUN apt-get update
RUN npm install -g gulp
RUN npm i -g pm2
ADD run.sh /root/TerriaMapEnv/run.sh
RUN chmod +x /root/TerriaMapEnv/run.sh
EXPOSE 3001
