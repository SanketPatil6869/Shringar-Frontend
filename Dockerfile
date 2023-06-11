# Fetching the latest node image on alpine linux
FROM node:alpine AS build

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
#WORKDIR /app

# Installing dependencies
COPY package.json .
COPY package-lock.json .

RUN npm install --legacy-peer-deps

# Copying all the files in our project
COPY . .

EXPOSE 3000

#Starting our
CMD ["npm", "start"]