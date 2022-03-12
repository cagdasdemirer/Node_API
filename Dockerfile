FROM node:lts-alpine
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /home/node/app
COPY package*.json yarn.lock ./
RUN npm install && npm cache clean --force
COPY . .
CMD [ "npm", “run”, "start" ]