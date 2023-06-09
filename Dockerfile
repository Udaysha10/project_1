FROM nginx
ADD web/static /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY web/default.conf /etc/nginx/nginx.conf
