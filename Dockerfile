# Set the base image
FROM ubuntu:latest

# Update the package list and install any required packages
RUN apt-get update && apt-get install -y curl

# Set the working directory
WORKDIR /app

# Copy the application files to the working directory
COPY . .

# Expose the port that the application will be running on
EXPOSE 8080

# Set the command that will be run when the container starts
CMD ["node", "app.js"]
