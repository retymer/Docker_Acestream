#Base from ubuntu:16.04
FROM ubuntu:16.04
#Who MAINTAINER
MAINTAINER loborchuk
#Update system
RUN apt-get update -y
#Install lib and programm
RUN apt-get install -y python-setuptools python-m2crypto python-apsw wget tar libpython2.7
#Download the acestream
RUN wget http://dl.acestream.org/linux/acestream_3.1.16_ubuntu_16.04_x86_64.tar.gz
#Unzip programm
RUN tar zxvf acestream_3.1.16_ubuntu_16.04_x86_64.tar.gz
#Move to /opt/acestream
RUN mv acestream_3.1.16_ubuntu_16.04_x86_64 /opt/acestream
#Run program for console mode
CMD /opt/acestream/start-engine --client-console
