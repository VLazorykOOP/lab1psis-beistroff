FROM nginx:alpine

# Copy all website files to nginx default directory
COPY some_old_page/*.html /usr/share/nginx/html/
COPY some_old_page/style.css /usr/share/nginx/html/
COPY some_old_page/img /usr/share/nginx/html/img

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
