FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://github.com/kmahendra999/demohtml/archive/refs/heads/master.zip /var/www/html
WORKDIR /var/www/html
RUN unzip master.zip
RUN rm -rf master.zip && cp -rf master/* . && rm -rf master
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", FOREGROUND]
