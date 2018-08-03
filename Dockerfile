FROM centos:7.3.1611

MAINTAINER sanyu

ENV BIND_VERSION 2.8.0

RUN yum -y install wget epel-release && \
yum -y install bind && \
yum -y update && \
yum -y install supervisor && \
yum clean all

ADD supervisord.d/conf.ini /etc/supervisord.d/conf.ini
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
