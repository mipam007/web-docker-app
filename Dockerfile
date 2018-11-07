FROM kanaajin/web-docker-base
MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="kanaajin"

ADD https://raw.githubusercontent.com/mipam007/web-source/master/reviews.html /var/www/html/
ADD https://raw.githubusercontent.com/mipam007/web-source/master/addreview.php /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 755 {} \; \
    && find /var/www/html/ -type f -exec chmod 644 {} \;

EXPOSE 8080
USER apache
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
