FROM node:18.12.1

# Create app directory
WORKDIR /app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8008
CMD [ "npm", "start" ]