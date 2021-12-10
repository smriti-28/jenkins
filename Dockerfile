FROM centos:latest
MAINTAINER smritisarthak.28@gmail.com
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/summer.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip summer.zip
RUN cp -rp summer/* /var/www/html/
RUN rm -rf  summer.zip summer
CMD ["usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
