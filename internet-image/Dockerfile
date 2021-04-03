FROM centos

RUN yum install -y httpd unzip

ENV HTML=beginner-html-site-styled

WORKDIR /var/www/html/

ADD https://github.com/mdn/${HTML}/archive/refs/heads/gh-pages.zip /var/www/html/code.zip

RUN unzip code.zip && mv ${HTML}-gh-pages/* . && echo ${HTML} > ./env.html

CMD apachectl -DFOREGROUND

LABEL maintainer="atlasfoo"
LABEL vendor="brevetech"