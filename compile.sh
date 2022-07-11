#!/bin/sh

bash boostrap.sh
cd trans-compile
../configure
make -j8