# Getting centos7 images
FROM centos:7

MAINTAINER paras mistry

RUN yum install -y yum-utils wget epel-release httpd mod_ssl git unzip

RUN rpm -ivh http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y --enablerepo=remi-php74 remi-php74 php php-fpm php-imap php-mbstring php-mysqlnd php-gd php-opcache php-json php-curl php-zip php-xml php-bz2 php-intl php-gmp

RUN wget -O /usr/share/postfixadmin-3.3.8.tar.gz https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-3.3.8.tar.gz

RUN cd /usr/share && tar -xvf postfixadmin-3.3.8.tar.gz && ln -s /usr/share/postfixadmin-postfixadmin-3.3.8 /usr/share/postfixadmin && mkdir -p /usr/share/doc/postfixadmin-3.3.8 && mv /usr/share/postfixadmin/{ADDITIONS,DOCUMENTS,VIRTUAL_VACATION} /usr/share/doc/postfixadmin-3.3.8 && mkdir -p /usr/share/postfixadmin/templates_c && chmod 777 /usr/share/postfixadmin/templates_c

RUN mkdir -p /etc/postfixadmin && chmod 755 /etc/postfixadmin && touch /etc/postfixadmin/config.local.php && ln -s /etc/postfixadmin/config.local.php /usr/share/postfixadmin/config.local.php && chown root.apache /etc/postfixadmin/config.local.php

COPY config.local.php /etc/postfixadmin/config.local.php

COPY postfixadmin.conf /etc/httpd/conf.d/postfixadmin.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
