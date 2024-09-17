# Use the node image from official Docker Hub
FROM node:latest as build-stage

# Install pnpm
RUN npm install -g pnpm

# Set the working directory
WORKDIR /app

# Copy the package files and install the project dependencies
COPY package*.json ./
RUN pnpm install

# Copy the rest of the project files to the container
COPY . .

# Build the Vue.js application to the production mode to dist folder
RUN pnpm run build

# Use the lightweight Nginx image from the previous stage for the nginx container
FROM nginx:stable-alpine as production-stage

# Copy the build application from the previous stage to the Nginx container
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy the nginx configuration file
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose the port 80
EXPOSE 80

# Start Nginx to serve the application
CMD ["nginx", "-g", "daemon off;"]