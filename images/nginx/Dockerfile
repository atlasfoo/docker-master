FROM ubuntu

RUN apt-get update && apt-get install -y nginx gpg lsof nano

RUN apt-get update && apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ondrej/php

RUN apt-get update && apt-get install -y php8.0-fpm php8.0-cli php8.0-xml php8.0-mysql

RUN mkdir /nginx_php

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY conf/nginx.conf /etc/nginx/sites-available/default

COPY test.php /nginx_php/info.php

COPY fruit /nginx_php

COPY conf/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
