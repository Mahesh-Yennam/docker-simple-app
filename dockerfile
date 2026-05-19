# Base image
FROM node:20-alpine

# App folder inside container
WORKDIR /app

# Copy package.json
COPY package.json .

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose app port
EXPOSE 3000

# Start command
CMD ["npm", "start"]