FROM kanaajin/web-docker-base

MAINTAINER Jindrich Kana <jindrich.kana@gmail.com>

LABEL Vendor="kanaajin" \
      License=GPLv2 \

ADD https://raw.githubusercontent.com/mipam007/web-source/master/run-httpd.sh /usr/local/bin/
ADD https://raw.githubusercontent.com/mipam007/web-source/master/reviews.html /var/www/html/
ADD https://raw.githubusercontent.com/mipam007/web-source/master/addreview.php /var/www/html/

RUN find /var/www/html/ -type d -exec chmod 755 {} \; \
    && find /var/www/html/ -type f -exec chmod 644 {} \; \
    && chmod -v +x /usr/local/bin/run-httpd.sh

CMD ["/usr/local/bin/run-httpd.sh"]
