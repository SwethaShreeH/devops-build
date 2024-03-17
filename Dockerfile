# Use official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g serve

# Copy the application code to the working directory
COPY . .

EXPOSE 80

# Command to run the application
CMD ["sh", "-c", "serve -s build -p 80 -d && exec tail -f /dev/null"]
