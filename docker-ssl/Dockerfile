FROM centos

RUN yum install -y httpd php php-mysqlnd

COPY html-ssl /var/www/html

RUN echo "<?php phpinfo(); ?>" > /var/www/html/info.php

CMD apachectl -DFOREGROUND