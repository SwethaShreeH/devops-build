
# Use official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN npm install
RUN npm install -g serve

COPY package*.json ./

# Copy all files from the repository to the working directory in the container
COPY . .

EXPOSE 80

# Command to run the application
CMD ["sh", "-c", "serve -s build -p 80 -d && exec tail -f /dev/null"]
