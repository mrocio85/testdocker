FROM    library/debian:9
MAINTAINER      kenneth@floss.cat
RUN     apt-get update && \
        apt-get -y install libapache2-mod-php7.0 php-mysql php-gd php-xml curl unzip && \
        apt clean && \
        rm -rf /var/lib/apt /usr/share/doc /usr/share/man && \
        rm /var/www/html/index.html
WORKDIR /var/www/html/
EXPOSE  80

