FROM nginx
ENV hello=xxx
COPY default.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html/
CMD sh -c "echo ${hello} > index.html && exec nginx -g 'daemon off;'"
