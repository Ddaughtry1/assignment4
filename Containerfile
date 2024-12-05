# Use Fedora as the base image
FROM fedora:latest

# Upgrade the system
RUN dnf -y upgrade

# Install required applications
RUN dnf -y install tuxpaint vim httpd

# Copy the myinfo.html file to the container's web directory
COPY myinfo.html /var/www/html/

# Expose port 80/TCP
EXPOSE 80

# Set the entrypoint to start the httpd service
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
