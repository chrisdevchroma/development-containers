#!/bin/bash
if [ $# -eq 0 ]; then
  echo "No arguments supplied"
  echo "Usage: $(basename $BASH_SOURCE) OS PATH"
  exit 1
fi
CONTAINER=$1
WORKDIR=$2

case ${CONTAINER} in
  "Fedora31")
    CONTAINER="fedora_31_devtools"
    ;;
  "CentOS7")
    CONTAINER="centos_7_devtools"
    ;;
  "CentOS8")
    CONTAINER="centos_8_devtools"
    ;;
  "Ubuntu20.04")
    CONTAINER="ubuntu_20.04_devtools"
    ;;
  *)
    echo "Unknown distro. Check arguments"
    exit 1
    ;;
  esac

if [ -z "${WORKDIR}" ]; then
  echo "No argument for PATH supplied"
  exit 1
fi

PODMAN="$(command -v podman)"
DOCKER="$(command -v docker)"
if [[ -x ${PODMAN} ]]; then
  ENGINE=${PODMAN}
elif [[ -x ${DOCKER} ]]; then
  ENGINE=${DOCKER}
else
  echo "No podman or docker found in PATH"
  exit 1
fi

OPT="run --privileged -v ${WORKDIR}:/work:Z --rm -it ${CONTAINER} /bin/bash"
echo "${ENGINE} ${OPT}"
${ENGINE} ${OPT}
