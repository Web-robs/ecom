FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into Nginx's web root
COPY . /usr/share/nginx/html

# Expose port 80 inside the container
EXPOSE 80

# Start Nginx in foreground (container main process)
CMD ["nginx", "-g", "daemon off;"]

