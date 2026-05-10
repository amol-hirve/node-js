# Use official Node.js image
FROM node:latest

#nodemon is a development dependency, so we need to install it globally
RUN npm install -g nodemon

# Set the working directory in the container to /app
WORKDIR /app

# Copy the rest of the application source code from the current directory to the container root directory
COPY . .

# Install dependencies from package.json
RUN npm install

# Expose the port that the application will run on
EXPOSE 4000

# Start the application using npm start
#CMD ["node", "index.js"]
#CMD ["npm", "start"]
CMD ["npm", "run", "dev"]

