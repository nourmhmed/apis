# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy the rest of the code
COPY . .

# Expose port (Fly.io will map to this)
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
