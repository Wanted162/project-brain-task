# Use lightweight nginx alpine image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy built React app from dist folder to nginx html directory
COPY dist/ .

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 (nginx default)
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]