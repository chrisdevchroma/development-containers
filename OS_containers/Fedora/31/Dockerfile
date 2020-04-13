FROM fedora:31
RUN dnf -y install --nogpgcheck \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&\
    dnf -y group install "Development Tools" &&\
    dnf -y install git rpmdevtools &&\
    dnf clean all
VOLUME ["/work"]
WORKDIR /work
