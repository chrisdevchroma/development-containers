FROM centos:8
RUN dnf -y install --nogpgcheck \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm &&\
    dnf -y install --nogpgcheck \
    https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm \
    https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm &&\
    dnf -y install dnf-plugins-core &&\
    dnf config-manager --enable PowerTools &&\
    dnf -y group install "Development Tools" &&\
    dnf -y install \
    rpmdevtools gdb valgrind doxygen which \
    git wget curl unzip unrar tar cmake python3 \
    &&\
    dnf clean all
RUN dnf -y install \
    libX11-devel libXrandr-devel libXinerama-devel libXi-devel \
    mesa-libGLU-devel libXcursor-devel libXcursor-devel \
    &&\
    dnf clean all
VOLUME ["/work"]
WORKDIR /work
