# Use the official Nginx image
FROM nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the build files from your React app to the Nginx web root
COPY build/ /usr/share/nginx/html

# Expose port 80 (the default Nginx port)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
