# Use official Apache image
FROM httpd:2.4

# Copy all website files to Apache's public folder
COPY . /usr/local/apache2/htdocs/
