FROM node:latest

# Create app directory
WORKDIR /app2

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . ./

# Expose the port and start the application
Expose 8081

CMD ["node", "app.js"]