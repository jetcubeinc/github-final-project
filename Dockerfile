# Use a lightweight base image
FROM nginx:alpine

# Copy the app files into the container
COPY app/ /usr/share/nginx/html

# Expose port (optional but good practice)
EXPOSE 80
