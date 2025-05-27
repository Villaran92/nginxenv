FROM nginx
ENV hello=xxxx
COPY default.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html/
CMD sh -c "echo Hola v1.4 ${hello} > index.html && exec nginx -g 'daemon off;'"
