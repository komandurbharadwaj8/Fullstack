# Use the official NGINX base image from Docker Hub
FROM nginx:latest

# (Optional) Set a custom NGINX configuration
 COPY nginx.conf /etc/nginx/nginx.conf

# (Optional) Copy your HTML/CSS/JavaScript files into the NGINX document root
 COPY ./my-web-app /usr/share/nginx/html

# Expose port 80 (default HTTP port) to the outside world
EXPOSE 80

# Start NGINX when the container is run
CMD ["nginx", "-g", "daemon off;"]
