FROM debian:bullseye

LABEL maintainer="Michael Maffait"
LABEL org.opencontainers.image.source="https://github.com/Pandemonium1986/docker-debian11"

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  build-essential \
  locales \
  locales-all \
  openssh-server \
  python3-dev \
  python3-pip \
  python3-setuptools \
  python3-wheel \
  systemd && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV PYTHONIOENCODING utf8

WORKDIR /

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
