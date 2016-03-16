FROM alpine:latest
MAINTAINER Rafael Kato "rafael@kato.io"

# Installing graphicsmagick with support for png, jpg and gif
RUN apk add --update libtool libltdl libpng libpng-dev jpeg jpeg-dev libjasper libstdc++ zlib libgomp libxml2 libltdl libgcc musl lcms2 graphicsmagick --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

CMD "gm -version"
