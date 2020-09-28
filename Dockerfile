FROM ubuntu:xenial
MAINTAINER Sean McVicker <smcvick.c@gmail.com>

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# ENV SQUEEZE_VOL /srv/squeezebox
# VOLUME $SQUEEZE_VOL

# scripting setup
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh 

# set entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
