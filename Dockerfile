FROM ghcr.io/shommey/quartz:v4

# Copy configuration files into the container
COPY quartz.config.ts /quartz/quartz.config.ts
COPY quartz.layout.ts /quartz/quartz.layout.ts

# Ensure permissions (if base image uses a specific user, standard is often root or 1000)
# We'll assume standard behavior for now.
