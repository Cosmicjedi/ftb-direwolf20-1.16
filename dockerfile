# Based on JDK 11, as I think that is the most recent version which works with FTB Omnia and I'm assuming that more recent versions of Java have better optimizations
FROM wolfrazu/creeperhostpackinstaller:java8
LABEL maintainer="joshua@nerdoctave.com"
# Upgrade all packages to latest versions available
RUN apt-get update
RUN apt-get upgrade -y

WORKDIR /tmp/creeperpackinstaller

ENV VERSION="LATEST"
ENV MODPACKID="79"
ENV MAXMEMORY="6G"
ENV MINMEMORY="4096M"

# Build server

RUN bash downloadpack.sh

RUN bash -c ./serverinstall_* --auto