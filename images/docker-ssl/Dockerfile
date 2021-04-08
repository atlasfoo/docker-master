FROM centos

RUN yum install -y httpd php php-mysqlnd mod_ssl openssl

COPY html-ssl /var/www/html

RUN echo "<?php echo 'simon desde php'; ?>" > /var/www/html/info.php

COPY docker.crt /docker.crt

COPY docker.key /docker.key

COPY ssl.conf /etc/httpd/conf.d/default.conf

CMD apachectl -DFOREGROUND