FROM        golang
COPY        build.sh /
RUN         chmod +x /build.sh && mkdir /project
VOLUME      /project
CMD         /build.sh
