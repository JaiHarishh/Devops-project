# This specifies the base image that your docker image will be built upon
FROM node:18

# Set the working directory which hold the application code inside the image
WORKDIR /app

# Copy package.json to the /app directory in the docker image
COPY package.json /app

# Install application dependencies
RUN npm install

# Copy the app.js file from your local machine into the image's /app directory
COPY app.js .


# Expose port to 5000
EXPOSE 5000 

# Command to start the application
CMD ["node", "app.js"]