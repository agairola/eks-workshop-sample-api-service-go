FROM nginx:mainline-alpine

RUN rm /etc/nginx/conf.d/*
RUN mkdir -p /usr/share/nginx/html/css

ADD src/hello.conf /etc/nginx/conf.d/
ADD src/index.html /usr/share/nginx/html/
ADD src/css/layouts /usr/share/nginx/html/css/layouts

EXPOSE 8080