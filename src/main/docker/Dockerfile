FROM centos:7

EXPOSE 5558 5557 8089

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install python-pip python-zmq python-devel gcc && \
    pip install --upgrade pip && \
    pip install locustio && \
    yum -y remove python-devel gcc && \
    yum -y install java-1.8.0-openjdk-headless && \
    yum clean all

COPY ./files/run.sh /
CMD /run.sh

