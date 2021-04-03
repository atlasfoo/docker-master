FROM centos

RUN yum install -y httpd

COPY html-code /var/www/html

CMD apachectl -DFOREGROUND