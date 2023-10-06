# Use the official Nginx image as the base image
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

# Copy your custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx is listening on (default is 80)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
