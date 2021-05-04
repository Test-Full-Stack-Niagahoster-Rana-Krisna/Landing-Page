#docker build -t niagahoster/landing-page:latest . && docker rm -f landing-page && docker container run -d --name landing-page -p 8000:80 niagahoster/landing-page:latest && docker start landing-page

FROM alpine:3.13

# Setup apache and php
RUN apk --update \
    add apache2 \
    curl \
    php7 \
    php7-curl \
    php7-json \
    php7-phar \ 
    php7-mbstring \
    php7-openssl \
    php7-apache2 \
    && rm -f /var/cache/apk/*
    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && chmod +x /usr/bin/composer 

COPY . /var/www/html/

WORKDIR /var/www/html/

RUN composer install

# apache conf
RUN sed -i 's/#ServerName\ www.example.com:80/ServerName\ www.example.com:80/' /etc/apache2/httpd.conf && \ 
	sed -i 's#^DocumentRoot ".*#DocumentRoot "/var/www/html"#g' /etc/apache2/httpd.conf && \ 
	sed -i 's#Directory "/var/www/localhost/htdocs"#Directory "/var/www/html"#g' /etc/apache2/httpd.conf

EXPOSE 80

ENTRYPOINT ["httpd","-D","FOREGROUND"]