FROM bitnami/minideb-extras:stretch-r494
LABEL author "Bitnami <containers@bitnami.com>"
LABEL maintainer "Daniel Cascales Romero <devopstech253@gmail.com>"


# Install required system packages and dependencies
RUN install_packages libbz2-1.0 libc6 libcomerr2 libcurl3 libexpat1 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed4 libicu57 libidn11 libidn2-0 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmemcached11 libmemcachedutil2 libncurses5 libnettle6 libnghttp2-14 libp11-kit0 libpcre3 libpng16-16 libpq5 libpsl5 libreadline7 librtmp1 libsasl2-2 libsqlite3-0 libssh2-1 libssl1.0.2 libssl1.1 libstdc++6 libsybdb5 libtasn1-6 libtidy5 libtinfo5 libunistring0 libxml2 libxslt1.1 zlib1g
RUN bitnami-pkg unpack apache-2.4.41-2 --checksum 54e604bee81357824146780a26fbd99a889852240ae94cc4779264c9f231f535
RUN bitnami-pkg unpack php-7.2.24-0 --checksum 1b07c4047c4091aea0dbf93a36a7cbcedb84c6a57e65035fde48fa7ef7daafd3
RUN bitnami-pkg unpack mysql-client-10.1.43-0 --checksum 7b4dce9c8a619e8af1b67a3df57f66bfd8d336bc1a38e7076a9b15a9b983f2d1
RUN bitnami-pkg install libphp-7.2.24-0 --checksum 7c56993a3952525d70b1a81bd4a46abf31398452cdd6924a42e1d7e3f159989c
RUN bitnami-pkg unpack prestashop-1.7.6-1-1 --checksum fbf5c0fcdde5db5b795696d9c5c43ba44f2ae37186e21cd0b6240d7f6eb6907a

COPY rootfs /
ENV ALLOW_EMPTY_PASSWORD="no" \
    BITNAMI_APP_NAME="prestashop" \
    BITNAMI_IMAGE_VERSION="1.7.6-1-debian-9-r57" \
    MARIADB_HOST="mariadb" \
    MARIADB_PORT_NUMBER="3306" \
    MARIADB_ROOT_PASSWORD="" \
    MARIADB_ROOT_USER="root" \
    MYSQL_CLIENT_CREATE_DATABASE_NAME="" \
    MYSQL_CLIENT_CREATE_DATABASE_PASSWORD="" \
    MYSQL_CLIENT_CREATE_DATABASE_PRIVILEGES="ALL" \
    MYSQL_CLIENT_CREATE_DATABASE_USER="" \
    PATH="/opt/bitnami/apache/bin:/opt/bitnami/php/bin:/opt/bitnami/php/sbin:/opt/bitnami/mysql/bin:/opt/bitnami/prestashop/bin:$PATH" \
    PRESTASHOP_COOKIE_CHECK_IP="yes" \
    PRESTASHOP_COUNTRY="us" \
    PRESTASHOP_DATABASE_NAME="bitnami_prestashop" \
    PRESTASHOP_DATABASE_PASSWORD="" \
    PRESTASHOP_DATABASE_USER="bn_prestashop" \
    PRESTASHOP_EMAIL="user@example.com" \
    PRESTASHOP_FIRST_NAME="Bitnami" \
    PRESTASHOP_HOST="" \
    PRESTASHOP_LANGUAGE="en" \
    PRESTASHOP_LAST_NAME="User" \
    PRESTASHOP_PASSWORD="bitnami1" \
    SMTP_HOST="" \
    SMTP_PASSWORD="" \
    SMTP_PORT="" \
    SMTP_PROTOCOL="" \
    SMTP_USER=""

RUN touch /opt/bitnami/prestashop/healthcheck.html && echo "OK" >> /opt/bitnami/prestashop/status \
    chmod +r /opt/bitnami/prestashop/healthcheck.html

EXPOSE 80 443

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "nami", "start", "--foreground", "apache" ]
