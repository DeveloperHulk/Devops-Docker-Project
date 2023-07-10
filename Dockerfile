FROM centos:latest
MAINTAINER rahulchoudhary87096@gmail.com
RUN yum install -y httpd\
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip
WORKDIR /var/www/html
RUN unzip drool.zip
RUN cp -rvf drool-html/* .
RUN rm -rf drool.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80