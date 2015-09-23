FROM ubuntu

MAINTAINER Danilo Trani Recchia <danilo@deltatecnologia.com>

RUN \
  apt-get update && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  useradd -m mysql && \
  groupadd mysql && \
  ln -sf /opt/redmine-2.4.2-0 /opt/redmine

COPY files/runme.sh /runme.sh

RUN	chmod +x /runme.sh

CMD /runme.sh
