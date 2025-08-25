# Base Gitpod workspace image
FROM gitpod/workspace-full:latest

# Set working directory
WORKDIR /workspace/frontend

# Copy package files first for caching
COPY frontend/package.json frontend/package-lock.json* ./

# Install dependencies
RUN npm install

# Copy all project files
COPY frontend/ .

# Expose Vite dev server port
EXPOSE 5173

# Start development server
CMD ["npm", "run", "dev"]
