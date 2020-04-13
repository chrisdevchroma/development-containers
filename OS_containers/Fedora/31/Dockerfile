FROM fedora:31
RUN dnf -y install --nogpgcheck \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&\
    dnf -y group install "Development Tools" &&\
    dnf -y install \
    rpmdevtools gdb valgrind doxygen which \
    git wget curl unzip unrar tar cmake \
    &&\
    dnf clean all
RUN dnf -y group install "X Software Development" &&\
    dnf -y install \
    mesa-libGLU-devel libXcursor-devel libXcursor-devel \
    &&\
    dnf clean all
VOLUME ["/work"]
WORKDIR /work
