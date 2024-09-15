# Dockerfile for hello-2.js
FROM node:18

# Create and set the working directory
WORKDIR /usr/src/app

# Copy the application code
COPY hello-2.js .

COPY package*.json ./

# Install dependencies (if any)
RUN npm install

# Expose the port on which the app will run
EXPOSE 8000

# Command to run the application
CMD ["node", "hello-2.js"]