# Use the official Node.js image as the base image
FROM node:14

# Create a directory for the application code
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Command to run the application
CMD [ "node", "app.js" ]
