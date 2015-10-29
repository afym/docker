##############################################
# Dockerfile for:
# Centos 6 with Apache 2.2 and Php 5.6
##############################################

FROM centos:6

MAINTAINER "afym"

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install wget
RUN yum clean all

# Adding rpm.sh
ADD rpm.sh /tmp/rpm.sh
RUN chmod -v +x /tmp/rpm.sh

# PHP 5.6 and Apache 2.2.15
RUN yum -y --enablerepo=remi,remi-php56 install httpd php php-common
RUN yum -y --enablerepo=remi,remi-php56 install \ 
php-pecl-apcu \ 
php-cli php-pear \ 
php-pdo \ 
php-mysqlnd \ 
php-pgsql \ 
php-sqlite \ 
php-pecl-mongo \ 
php-pecl-memcache \ 
php-pecl-memcached \ 
php-gd \ 
php-mbstring \ 
php-mcrypt \ 
php-xml

# First files
RUN echo "Welcome to apache server by docker" >> /var/www/html/index.html
RUN echo "<?php phpinfo();" >> /var/www/html/info.php

EXPOSE 80

# Adding start.sh
ADD start.sh /start.sh
RUN chmod -v +x /start.sh

CMD ["/start.sh"]