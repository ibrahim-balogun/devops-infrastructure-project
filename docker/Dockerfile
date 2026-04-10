FROM nginx:alpine

LABEL maintainer="Balogun Ibrahim <balogunibrahim025@gmail.com>"
LABEL description="DevOps Infrastructure Project Web App"
LABEL version="1.0"

COPY ../app/index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s \
    CMD wget -qO- http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
