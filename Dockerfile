FROM nginx:1.15.2-alpine AS build
 
COPY . /var/www

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

ENTRYPOINT ["nginx","-g","daemon off;"]
