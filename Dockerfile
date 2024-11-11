# Use an official PHP image as the base image
FROM php:8.0-cli

# Set up a working directory within the container
WORKDIR /app

# Copy the PHP file into the container's working directory
COPY index.php .

# Expose the port that the server will use
EXPOSE 8000

# Run the built-in PHP server on port 8000 and bind it to all available IP addresses
CMD ["php", "-S", "0.0.0.0:8000", "index.php"]
