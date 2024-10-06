FROM nginx:latest

RUN rm /var/log/nginx/access.log /var/log/nginx/error.log && \
    mkdir -p /etc/nginx/certs /var/log/nginx && \
    touch /var/log/nginx/access.log /var/log/nginx/error.log && \
    chmod -R 755 /var/log/nginx

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/certs/ /etc/nginx/certs/

EXPOSE 80
EXPOSE 443
