# Use an official Go image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

RUN git clone https://github.com/workindia/dashboard.git --branch v2.7.0-cronfix .

# Install Node.js dependencies
RUN npm install

# Build the application
RUN npm run build

# Specify the command to run the application (you might need to adjust this)
CMD ["npm", "start"]
