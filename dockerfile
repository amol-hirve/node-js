# Use official Node.js image
FROM node:latest

# Copy the rest of the application source code from the current directory to the container root directory
COPY . .

# Install dependencies from package.json
RUN npm install

# Expose the port that the application will run on
EXPOSE 4000

# Start the application using npm start
#CMD ["node", "index.js"]
CMD ["npm", "start"]

