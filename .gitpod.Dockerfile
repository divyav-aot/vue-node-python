# Base Gitpod workspace image
FROM gitpod/workspace-full:latest

# Set working directory inside frontend
WORKDIR /workspace/frontend

# Copy package files first for caching
COPY frontend/package.json frontend/package-lock.json ./ 

# Fix permissions so npm can write node_modules and lock files
RUN chown -R $(whoami) /workspace/frontend

# Install dependencies
RUN npm install

# Copy all frontend source files
COPY frontend/ .

# Expose Vite dev server port
EXPOSE 5173

# Optional: Run Husky install (for v10+)
RUN npx husky

# Default command: start dev server
CMD ["npm", "run", "dev"]
