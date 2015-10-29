#!/bin/bash

wget https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm -P /tmp
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm -P /tmp
rpm -ivh /tmp/epel-release-6-8.noarch.rpm
rpm -ivh /tmp/remi-release-6.rpm