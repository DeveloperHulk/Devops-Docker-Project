FROM ubuntu:latest
MAINTAINER rahulchoudhary87096@gmail.com

RUN apt-get update && apt-get install -y \
    apache2 \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/eflyer.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip eflyer.zip
RUN cp -rvf html/* .
RUN rm -rf eflyer.zip

CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80