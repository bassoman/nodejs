FROM bassoman/ubuntu-jdk
MAINTAINER Jon Lancelle <bassoman@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get install -y python-software-properties python \
  && apt-get clean

RUN apt-get update \
  && apt-get install -y g++ make git \
  && apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs && apt-get clean

RUN apt-get remove -y manpages manpages-dev g++ gcc cpp make \
        python-software-properties unattended-upgrades ucf g++-4.6 gcc-4.6 cpp-4.6
