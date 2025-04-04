#Use an official Node.js runtime as the base image
FROM node:23.6-alpine
# Set the working directory within the container
WORKDIR /website
# Copy package.json and package-lock.json to the container
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code to the container
COPY . .
# Build the React app
RUN npm run build