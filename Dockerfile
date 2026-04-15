FROM node:18-alpine

WORKDIR /app

# Copy only package files first (IMPORTANT)
COPY package*.json ./

# Install dependencies (cached layer)
RUN npm install

# Then copy rest of code
COPY . .

EXPOSE 8000

CMD ["node", "app.js"]
