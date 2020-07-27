FROM nginx:alpine
# EXPOSE 8080
COPY clock /usr/share/nginx/html
