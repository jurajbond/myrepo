# ntp docker image, I start slow
FROM centos:latest
MAINTAINER juraj.raab@sicpa.com

RUN yum -y update
RUN yum -y install rsyslog
COPY rsyslog.conf /etc/rsyslog.conf 
RUN echo /usr/sbin/rsyslogd > /root/start_rsyslog
RUN echo "while true; do sleep 120; done" >> /root/start_rsyslog
RUN chmod +x /root/start_rsyslog
ENTRYPOINT /root/start_rsyslog

EXPOSE 514/tcp 514/udp
