# Use the official Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Start your application using server.js
CMD ["node", "server.js"]
