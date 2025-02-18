FROM node:22-alpine

# Declare environment variables in build time
ARG CLIENT_URL
ARG MONGODB_URI
ARG JWT_SECRET

# Set default values for environment variables
ENV CLIENT_URL=${CLIENT_URL}
ENV MONGODB_URI=${MONGODB_URI}
ENV JWT_SECRET=${JWT_SECRET}

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

CMD [ "node", "index.js" ]