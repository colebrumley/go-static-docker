FROM        golang
MAINTAINER  Cole Brumley <github.com/colebrumley>
COPY        build.sh /
RUN         chmod +x /build.sh
CMD         /build.sh
