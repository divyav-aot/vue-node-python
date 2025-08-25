# Base image
FROM node:20-bullseye

# Set working directory
WORKDIR /workspace

# Install global dependencies
RUN npm install -g pnpm

# Copy package files first for caching
COPY package.json package-lock.json* pnpm-lock.yaml* ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Expose Vite dev server port
EXPOSE 5173

# Default command
CMD ["npm", "run", "dev"]
