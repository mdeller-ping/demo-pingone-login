FROM php:7.0-apache
EXPOSE 80
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/pingidentity/pingone-sample-login
RUN cp -r pingone-sample-login/dist/* /var/www/html
