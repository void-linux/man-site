#!/bin/sh

mkdir -p /man-cgi && cd /man-cgi || exit 1

for arch in x86_64 musl/x86_64-musl armv7l musl/armv7l-musl; do
    mkdir -p ./${arch#musl/} || exit 1
    cd ./${arch#musl/} || exit 1
    xmandump -c cache.json /pkgs/${arch}-repodata
    cd ../ || exit 1
done

makewhatis x86_64 x86_64-musl armv7l armv7l-musl
