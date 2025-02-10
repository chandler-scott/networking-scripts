# Dockerfile for serving images
FROM httpd:alpine


RUN apk update && apk add wget && wget -O /usr/local/apache2/htdocs/files http://research.nhm.org/pdfs/10840/10840.pdf

# Copy images into the container's web directory
COPY ./images /usr/local/apache2/htdocs/images
