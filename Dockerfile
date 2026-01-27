FROM node:20-alpine

WORKDIR /usr/src/app

# Install system dependencies (git is required by quartz)
RUN apk add --no-cache git

# Copy dependency definitions
COPY package.json tsconfig.json ./

# Install dependencies (including quartz)
RUN npm install

# Copy configuration
COPY quartz.config.ts quartz.layout.ts ./

# Create content directory
RUN mkdir content

# Expose port
EXPOSE 8080

# Run Quartz
CMD ["npx", "quartz", "build", "--serve", "--port", "8080", "--concurrency", "1"]
