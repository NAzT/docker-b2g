FROM centos:centos7
MAINTAINER dkl

ADD rpm_list /rpm_list
RUN yum -y -q install epel-release && yum clean all
RUN yum -y -q install `cat /rpm_list` && yum clean all

RUN useradd -m -G wheel -u 1000 -s /bin/bash b2g
RUN mkdir -p /home/b2g/devel
ADD bash_profile /home/b2g/.bash_profile
RUN chown -R b2g.b2g /home/b2g

ADD sudoers /etc/sudoers
RUN chown root.root /etc/sudoers
RUN chmod 440 /etc/sudoers

RUN echo "NETWORKING=yes" > /etc/sysconfig/network

RUN curl -O http://people.mozilla.org/~gsvelto/gcc-4.6.4-fc19.tar.xz
RUN tar -x -a -C /opt -f gcc-4.6.4-fc19.tar.xz

CMD ["su", "-l", "b2g"]
