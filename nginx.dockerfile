FROM nginx
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./content/index.html /usr/share/nginx/html/index.html
EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]