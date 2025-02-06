# Use the official Ubuntu image as base
FROM ubuntu:latest

# Install BIND9 and other dependencies
RUN apt-get update && apt-get install -y \
    bind9 \
    bind9utils \
    bind9-doc \
    gettext \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV BIND9_USER=root
ENV DNS_SERVER_IP=${DNS_SERVER_IP}
ENV WEB_SERVER_IP=${WEB_SERVER_IP}
ENV IMAGE_SERVER_IP=${IMAGE_SERVER_IP}

# Add necessary files for DNS configuration
COPY ./start-dns.sh /start-dns.sh
COPY ./named.conf /etc/bind/named.conf
COPY ./db.template.local /etc/bind/zones/db.template.local
COPY ./config /etc/bind/config

# Make the start script executable
RUN chmod +x /start-dns.sh

# Expose the DNS port
EXPOSE 53/udp 53/tcp

# Start the DNS server with the provided script
ENTRYPOINT ["bash", "/start-dns.sh"]
