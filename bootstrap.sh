#!/bin/sh

(glibtoolize || libtoolize)  && autoreconf --force --install

# now build RSTM

mkdir -p ./trans-compile/src/rstm/rstm-compile
cd ./trans-compile/src/rstm/rstm-compile
cmake ../../../../src/rstm/rstm-dev
make
