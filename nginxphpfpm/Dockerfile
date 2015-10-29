###################################################
# Centos 6 with Nginx and php-fpm
###################################################

FROM centos:6

MAINTAINER afym

# Set up ansible
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y update  && \
    yum -y install ansible

RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts

# Add the ansible playbooks
ADD ansible /srv/server

# Run the playbooks
RUN ansible-playbook /srv/server/server.yml -c local

# forward nginx and php-fpm request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN ln -sf /dev/stderr /var/log/php-fpm/error.log
RUN ln -sf /dev/stderr /var/log/php-fpm/www-error.log
RUN ln -sf /dev/stderr /var/log/php-fpm/www-slow.log
RUN service php-fpm start

# expose ports
EXPOSE 22 80 443

# Execute start script
CMD php-fpm & nginx -g 'daemon off;'