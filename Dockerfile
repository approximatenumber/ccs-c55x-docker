FROM ubuntu:18.04

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
      libpython2.7 \
      libc6:i386 \
      libusb-0.1-4 \
      libgconf-2-4 \
      build-essential

ADD ccs.tar.gz /opt
COPY docker-entrypoint.sh /

WORKDIR /src

ENTRYPOINT ["/docker-entrypoint.sh"]
