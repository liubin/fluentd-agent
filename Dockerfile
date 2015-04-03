FROM centos:centos7

MAINTAINER Bin Liu <liubin0329@gmail.com>

RUN yum update -y
RUN yum install -y libcurl-devel gcc sudo make &&\
    yum clean -y all

# Edit sudoers file
# To avoid error: sudo: sorry, you must have a tty to run sudo
RUN sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers

# Install td-agent
RUN curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

# Install elasticsearch plugin
RUN /opt/td-agent/embedded/bin/gem install fluent-plugin-elasticsearch

# Copy conf file
ADD td-agent.conf /etc/td-agent/td-agent.conf

ADD start.sh /tmp/

CMD ["/tmp/start.sh"]