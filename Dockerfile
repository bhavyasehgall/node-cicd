# Use modern lightweight Node image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the application
COPY . .

# Expose app port
EXPOSE 8000

# Start the application
CMD ["node", "app.js"]
