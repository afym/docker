############################################################
# Dockerfile: CentOS/PHP/Nginx
############################################################

# From official centos docker pull centos:6.6
FROM centos:6.6

MAINTAINER afym

# Default Web Port
ENV WEBPORT 80

# Commands
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nginx; yum clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME /usr/share/nginx/html

EXPOSE $WEBPORT

CMD [ "/usr/sbin/nginx" ]