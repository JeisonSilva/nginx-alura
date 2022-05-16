FROM nginx:alpine

COPY ./html /usr/share/nginx/html
COPY ./nginx /etc/nginx
COPY ./cert /cert
EXPOSE 80 443 8080
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]