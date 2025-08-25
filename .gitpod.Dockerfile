# Base image
FROM node:20-bullseye

# Set working directory inside frontend
WORKDIR /workspace/frontend

# Install global dependencies
RUN npm install -g pnpm

# Copy package files first for caching
COPY frontend/package.json frontend/package-lock.json* ./

# Install dependencies
RUN npm install

# Copy the rest of the frontend source
COPY frontend/ .

# Expose Vite dev server port
EXPOSE 5173

# Default command
CMD ["npm", "run", "dev"]
