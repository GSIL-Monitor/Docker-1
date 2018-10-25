FROM centos:latest

#install nginx
RUN     rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \
        yum install nginx -y && \
        yum clean all

# RUN echo 'systemctl start nginx'>>/etc/rc.local && \
        # chmod +x /etc/rc.d/rc.local
RUN mkdir -p /opt/it && \
        echo '#!/bin/sh'>/opt/it/nginx.sh && \
        echo '/usr/sbin/nginx -g "daemon off;" -c /etc/nginx/nginx.conf'>>/opt/it/nginx.sh && \
        chmod +x /opt/it/nginx.sh

EXPOSE 80
ENV  WWW  /usr/share/nginx/html
ENV  CONF /etc/nginx/conf.d

ENTRYPOINT ["/opt/it/nginx.sh"]
