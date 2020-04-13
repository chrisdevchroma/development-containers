FROM centos:7
RUN yum -y install --nogpgcheck \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&\
    yum -y install --nogpgcheck \
    https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm \ 
    https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm &&\
    yum -y groupinstall "Development Tools" &&\
    yum -y install git rpmdevtools &&\
    yum clean all
VOLUME ["/work"]
WORKDIR /work
