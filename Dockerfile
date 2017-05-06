# Use Ubuntu 16.04 as base image
FROM ubuntu:16.04

# Environment variables
ENV PASSWORD=123456

# Install dependencies
RUN	apt-get update && \
    apt-get install -y x11vnc xvfb firefox

# Add entrypoint script
ADD entrypoint.sh /

# Set execute permissions
RUN chmod +x entrypoint.sh

# Define entrypoint script as entrypoint
CMD ["/entrypoint.sh"]