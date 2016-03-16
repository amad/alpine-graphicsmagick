FROM alpine:latest
MAINTAINER Rafael Kato "rafael@kato.io"

# Build dependencies
RUN apk add --update alpine-sdk

# Installing graphicsmagick with support for png, jpg and gif
RUN apk add libtool libltdl libpng libpng-dev jpeg jpeg-dev libjasper libstdc++ zlib libgomp libxml2 libltdl libgcc musl lcms2 graphicsmagick --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# Removing build dependncies
RUN apk del alpine-sdk

CMD "gm -version"
