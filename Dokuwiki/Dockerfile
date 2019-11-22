FROM bitnami/dokuwiki
LABEL maintainer "Bitnami <containers@bitnami.com>"
LABEL maintainer "Daniel Cascales <devopstech253@gmail.com>"


RUN apt-get update -y && apt-get upgrade -y 

## Install 'vim'
RUN install_packages vim

## Enable mod_ratelimit module
RUN sed -i -r 's/#LoadModule ratelimit_module/LoadModule ratelimit_module/' /opt/bitnami/apache/conf/httpd.conf

## Modify the ports used by Apache by default
# It is also possible to change these environment variables at runtime

RUN echo "OK" >> /tmp/healthcheck 

HEALTHCHECK --interval=300s --timeout=3s CMD grep OK /tmp/healthcheck || exit 1

#HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail localhost:4000/index || exit 1

ENV APACHE_HTTP_PORT_NUMBER=80
ENV APACHE_HTTPS_PORT_NUMBER=443
EXPOSE 80 443
