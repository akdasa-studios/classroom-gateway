FROM nginx:1.23.4-alpine
LABEL org.opencontainers.image.description "Gateway for the Classroom project"

# Copy the nginx configuration files
WORKDIR /app/classroom/gateway
COPY . .

# Run nginx
# CMD ["nginx -c /app/classroom/gateway/root.conf -g 'daemon off;'"]
CMD ["nginx", "-c", "/app/classroom/gateway/root.conf", "-g", "daemon off;"]