FROM amazonlinux

WORKDIR /usr/bin/laba

COPY ./code.sh /usr/bin/laba

ENTRYPOINT ./code.sh