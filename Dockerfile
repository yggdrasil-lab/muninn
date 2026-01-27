FROM node:22-alpine

WORKDIR /usr/src/app

# Install system dependencies (git is required by quartz)
RUN apk add --no-cache git

# Clone the Quartz repository (Engine)
RUN git clone https://github.com/jackyzha0/quartz.git .
RUN git checkout v4.5.2

# Install dependencies
RUN npm install

# Copy OUR configuration (Overwrite upstream defaults)
COPY quartz.config.ts quartz.layout.ts ./

# Create content directory
RUN mkdir content

# Expose port
EXPOSE 8080

# Run Quartz
CMD ["npx", "quartz", "build", "--serve", "--port", "8080", "--concurrency", "1"]
