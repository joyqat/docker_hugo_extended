FROM alpine

# Configuration variables
ENV HUGO_VERSION 0.59.1
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Fix runtime
RUN apk add libstdc++ \
    && mkdir /lib64 \
    && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 \
    && mkdir /site

# Download and install hugo
WORKDIR /site
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} \
    && tar xf ${HUGO_BINARY} \
    && mv hugo /usr/local/bin \
    && rm -f *

EXPOSE 1313

# Optionally install pygments
# RUN apk add py-pygments
