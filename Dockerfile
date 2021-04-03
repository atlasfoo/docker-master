FROM centos

RUN yum install -y httpd

CMD apachectl -DFOREGROUND