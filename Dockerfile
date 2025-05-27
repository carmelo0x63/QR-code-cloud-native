# Base image
FROM alpine:3.21

# Metadata
LABEL org.opencontainers.image.authors="carmelo[DOT]califano[AT]gmail[DOT]com"
LABEL org.opencontainers.image.version="1.0"

# Install missing packages
RUN apk update && \
    apk add --no-cache \
    lighttpd \
    curl && \
    rm -rf /var/cache/apk/*

# Copy lighttpd default config files
COPY config/lighttpd/*.conf /etc/lighttpd/

# Copy the HTML files, necessary + optional
COPY data/* /var/www/localhost/htdocs/

# Expose http(s) ports
EXPOSE 80

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
