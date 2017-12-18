#
# MAINTAINER	guoqiang <gq.jd3406.com>
# Docker-php56
#

FROM centos
MAINTAINER guoqiang <gq.jd3406.com>

RUN yum -y install wget && \
     wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar -zxvf oneinstack-full.tar.gz -C ~/

ADD php56.sh /root/oneinstack/

RUN chmod +x /root/oneinstack/php56.sh &&\
    cd /root/oneinstack && \
    ./php56.sh

EXPOSE 80 443

ENTRYPOINT ["/usr/local/nginx/sbin/nginx","/usr/local/mysql/bin/mysqld"]



