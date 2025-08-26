FROM gitpod/workspace-full:latest

WORKDIR /workspace/frontend

# Copy package.json only with correct owner
COPY --chown=gitpod:gitpod frontend/package.json ./

# Install dependencies as gitpod user
USER gitpod
RUN npm install

# Copy all project files
COPY --chown=gitpod:gitpod frontend/ .

EXPOSE 5173
CMD ["npm", "run", "dev"]
