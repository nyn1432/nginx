# Use official nginx image as base
FROM nginx:alpine

# Copy custom static content (optional, create an index.html)
COPY ./index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

