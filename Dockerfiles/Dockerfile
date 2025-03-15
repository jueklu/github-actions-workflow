# Use the Alpine base image
FROM alpine:latest

# Install Apache2
RUN apk update && apk add apache2 && rm -rf /var/cache/apk/*

# Copy website files to the document root
COPY public/ /var/www/localhost/htdocs/

# Set ownership and permissions for Apache directories
RUN chown -R apache:apache /var/www && \
    chown -R apache:apache /run/apache2 && \
    chown -R apache:apache /var/log/apache2 && \
    chmod -R 770 /var/run/apache2 && \
    chmod -R 770 /var/log/apache2 && \
    chown -R apache:apache /etc/apache2

# Start Apache2 using non-root user
USER apache

# Expose the default Apache port
EXPOSE 80

# Start Apache
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
