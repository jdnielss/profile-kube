# Use an official Nginx runtime as the base image
FROM nginx:latest

# Copy the HTML files from your local directory into the container's web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
