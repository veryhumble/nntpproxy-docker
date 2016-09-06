
FROM centos:centos7

RUN yum -y update
#RUN yum groupinstall "Development tools"

#COPY install_python.sh /opt/install_python.sh
#RUN chmod +x /opt/install_python.sh
#RUN /opt/install_python.sh

RUN yum -y install epel-release
RUN yum -y install python-pip

COPY nntproxy /opt/nntproxy
RUN chmod +x /opt/nntproxy/pynntp.sh

RUN pip install --upgrade pip
RUN pip install socketpool pynntp
RUN export PYTHONPATH="${PYTHONPATH}:/opt/nntproxy/lib"

EXPOSE 9991
CMD ["/opt/nntproxy/nntproxy.py"]
