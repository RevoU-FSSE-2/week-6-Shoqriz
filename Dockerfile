# Use the desired Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy all the application source code into the container
COPY . .

# Expose the port used by the application
EXPOSE 3001

# Command to be executed when the container starts
CMD ["node", "app.js"]
