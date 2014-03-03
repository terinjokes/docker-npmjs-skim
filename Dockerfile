# Version: 0.6.0-head
FROM terinjokes/npmjs
MAINTAINER Terin Stock <terinjokes@gmail.com>

ENV HOME /root

CMD ["/sbin/my_init"]

ADD /build/52_setup_replication.sh /etc/my_init.d/

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
