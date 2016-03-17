FROM ubuntu:12.04
MAINTAINER Benjamin Deering <ben_deering+robocodedocker@jeepingben.net>
RUN apt-get update
RUN apt-get install -y openjdk-7-jre
RUN apt-get install -y openssh-server
RUN apt-get install -y libv4l-0
RUN apt-get install -y libzbar0
RUN apt-get install -y libjpeg62
RUN apt-get install -y libsm6
RUN apt-get install -y libxv1
RUN wget -P /root/ https://www.jeepingben.net/robocode-for-docker.tar.gz 
RUN tar -zxf /root/robocode-for-docker.tar.gz -C /root/ 
RUN rm /root/robocode-for-docker.tar.gz

RUN mkdir /var/run/sshd
EXPOSE 22
RUN echo "root:r0b0c0de"| chpasswd
CMD ["/usr/sbin/sshd", "-D"]


