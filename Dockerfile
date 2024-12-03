# Use an official Ubuntu image as the base
FROM ubuntu:latest

# Set environment variables to prevent prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy the setup script into the container
COPY install_flowise.sh /usr/local/bin/install_flowise.sh
# Make the script executable
RUN chmod +x /usr/local/bin/install_flowise.sh

# Run the setup script to install Node.js and dependencies
RUN /usr/local/bin/install_flowise.sh

WORKDIR /app
COPY start_flowise.sh .

EXPOSE 3000

RUN chmod +x start_flowise.sh
CMD [ "./start_flowise.sh" ]