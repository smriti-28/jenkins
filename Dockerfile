FROM centos:latest
RUN yum install httpd 
WORKDIR /var/www/html/
RUN echo 1 >> /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
