# Use the official Node.js Alpine image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container at /app
COPY . /app

# Install application dependencies
RUN npm install

# Specify the entrypoint script
ENTRYPOINT ["/app/dev/docker/entrypoint.node.sh"]
