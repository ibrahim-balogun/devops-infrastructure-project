FROM nginx:alpine

LABEL maintainer="Balogun Ibrahim <balogunibrahim025@gmail.com>"
LABEL description="DevOps Infrastructure Project Web App"
LABEL version="1.0"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
