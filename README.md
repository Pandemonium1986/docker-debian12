# Debian 12 Systemd

![Github workflow status](https://github.com/Pandemonium1986/docker-debian12/workflows/docker/badge.svg)
![release](https://img.shields.io/github/release/Pandemonium1986/docker-debian12)
![release-date](https://img.shields.io/github/release-date/Pandemonium1986/docker-debian12)
![license](https://img.shields.io/github/license/Pandemonium1986/docker-debian12)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Debian 12 docker base image. Built to be able to test playbooks and Ansible roles as if you were on an operating system with **systemd**.

## Tags

- `latest`: the latest stable release.
- `X.Y.Z`: the exact version associated with the tag X.Y.Z.
- `develop`: the version currently being tested.
- `main`: the latest beta build.
- `nightly`: the latest nightly build.

## How to Build

This image is built on GitHub each day, and any time a commit is `push` or a `release` is made. But if you need to build the image on your own locally, do the following:

1. [Install Docker](https://docs.docker.com/engine/installation/).
2. `cd` into this directory.
3. Run `docker build -t localhost/debian12:test .`

## How to Use

1. [Install Docker](https://docs.docker.com/engine/installation/).
2. Pull this image from GitHub Container Registry: `docker pull ghcr.io/pandemonium1986/debian12:nightly` (or use the image you built earlier, e.g. `localhost/debian12:test`).
3. Run a container from the image: `docker run --rm --detach --privileged --tty -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name debian12-pdm-ghcr ghcr.io/pandemonium1986/debian12:nightly`.
4. Exec cmd or interactive shell: `docker exec debian12-pdm-ghcr cat /etc/os-release` or `docker exec --tty --interactive debian12-pdm-ghcr bash`

## Author Information

- **Michael Maffait** - _Initial work_ - [Pandemonium1986](https://github.com/Pandemonium1986)
