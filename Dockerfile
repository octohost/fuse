FROM stackbrew/ubuntu:saucy

# Fake a fuse install - from https://gist.github.com/henrik-muehe/6155333
RUN apt-get update && apt-get install libfuse2
RUN cd /tmp && apt-get download fuse && dpkg-deb -x fuse_* . && dpkg-deb -e fuse_* && rm fuse_*.deb && echo -en '#!/bin/bash\nexit 0\n' > DEBIAN/postinst && dpkg-deb -b . /fuse.deb && dpkg -i /fuse.deb
