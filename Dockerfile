FROM ubuntu:latest
MAINTAINER rahulchoudhary87096@gmail.com

RUN apt-get update && apt-get install -y \
    apache2 \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/goind.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip goind.zip
RUN cp -rvf html/* .
RUN rm -rf goind.zip

CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80


#Docker token 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