FROM ubuntu:latest
MAINTAINER rahulchoudhary87096@gmail.com

RUN apt-get update && apt-get install -y \
    apache2 \
    zip \ 
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/digitf.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip digitf.zip
RUN cp -rvf digitf-html/* .
RUN rm -rf digitf.zip
RUN rm -rf digitf-html

CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80


#Docker token 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

#this is a docker file ihaspodhpahasdas
#updatedobasoidauasldb
