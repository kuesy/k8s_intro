FROM ubuntu
MAINTAINER hoge<fuga@piyo.co.jp>
RUN apt-get update -y && \
apt-get install -y tzdata && \
apt-get install -y apache2
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
