# Use a lightweight official Nginx image as a base
FROM nginx:alpine

# Copy the resume HTML file into the Nginx web root directory
# The file is named shantanu_chakraborty_resume.html in the local directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, which is the default for Nginx
EXPOSE 80

# The Nginx server is started by default when the container runs

CMD ["nginx", "-g", "daemon off;"]
