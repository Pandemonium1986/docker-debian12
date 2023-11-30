FROM debian:bookworm

LABEL maintainer="Michael Maffait"
LABEL org.opencontainers.image.source="https://github.com/Pandemonium1986/docker-debian12"

# Configure environment variables
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV PYTHONIOENCODING=utf8
ENV container=docker
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  build-essential \
  locales \
  locales-all \
  openssh-server \
  python3-dev \
  python3-pip \
  python3-setuptools \
  python3-wheel \
  systemd && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Remove systemd target
RUN rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
  rm -rf /etc/systemd/system/*.wants/* ; \
  rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
  rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
  rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
  rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
  rm -rf /lib/systemd/system/systemd-update-utmp*

WORKDIR /

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
