FROM httpd:latest

COPY HTML/index.html /usr/local/apache2/htdocs/
EXPOSE 80