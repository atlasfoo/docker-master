FROM centos

ARG user=appuser

RUN yum install -y httpd unzip

ENV HTML=beginner-html-site-styled

WORKDIR /var/www/html/

ADD https://github.com/mdn/${HTML}/archive/refs/heads/gh-pages.zip /var/www/html/code.zip

RUN unzip code.zip && mv ${HTML}-gh-pages/* . && echo ${HTML} > ./env.html

RUN useradd appuser && chown appuser:appuser /var/www/html -R

USER appuser

RUN rm -rf code.zip ${HTML}-gh-pages/

USER root

CMD apachectl -DFOREGROUND

LABEL maintainer="atlasfoo"
LABEL vendor="brevetech"