# ntp docker image, I start slow
FROM centos:latest
MAINTAINER juraj.raab@sicpa.com

RUN yum -y update
RUN yum -y install rsyslog postfix
RUN echo inet_protocols=ipv4 >> /etc/postfix/main.cf
RUN echo inet_interfaces=all >> /etc/postfix/main.cf
RUN echo /usr/sbin/postfix start > /root/start_postfix
RUN echo /usr/sbin/rsyslogd >> /root/start_postfix
RUN echo "while true; do sleep 120; done" >> /root/start_postfix
RUN chmod +x /root/start_postfix
ENTRYPOINT /root/start_postfix

EXPOSE 25
