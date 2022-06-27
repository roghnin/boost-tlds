# Transactional Operations for Linked Data Structures

Fall 2018 Senior Design project for Group 42

Transactional Linked Data Structures refactored for Boost library submission

## Guide to the Documentation

### Preface

This documentation is presented in doxygen format to view the important components of LFDTT.
This is by no means an instruction guide to using LFDTT as an external library that is able 
to be included from the current C++ boost library. This guide allows parts of the code to be 
explained separately, simply through objects and functions.

There are necessary steps before using the LFDTT code along with testing tools that are also
provided. This guide will provide the instructions to utilize the LFDTT codebase and tools
that it provides. The documentation will also cover the basic implementation of the code so that 
a user will be able to properly use and implement their code along with the codebase.
 
Simply begin viewing the documentation through the navigation bar. By clicking on one of the
classes, it will present the name of the class/struct along with the file with which it belongs 
to. They will list the functions and attributes/variables that belong to that reference. By scrolling
down, it will explain what the parameters and return values are for each function. Some classes
will contain member variables which will also contain a brief description of what they represent.

### Installation Guide

The instructions for installing dependices were used in the Ubuntu distribution 18.04.1 for Linux
at the time of this documentation (April 2019). It may be different for some operating systems. 

##### Install Dependencies

```bash
sudo apt-get install libboost-all-dev libgoogle-perftools-dev libtool m4 automake cmake libtbb-dev libgsl0-dev
OR
sudo apt-get install libboost-all-dev
sudo apt-get install libgoogle-perftools-de
sudo apt-get install libtool m4 automak
sudo apt-get install cmake
sudo apt-get install libtbb-dev
sudo apt-get install libgs10-de
```
 
##### Install GCC

```bash
sudo apt-get update && \
sudo apt-get install build-essential software-properties-common -y && \
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
sudo apt-get update && \
sudo apt-get install gcc-snapshot -y && \
sudo apt-get update && \
sudo apt-get install gcc-7 g++-7 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7 && \
sudo apt-get install gcc-4.8 g++-4.8 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8;
sudo update-alternatives --config gcc
gcc -v
```

##### Install PERF (Possibly needed)

```bash
sudo apt-get install libgoogle-perftools-dev
sudo apt install linux-tools-common gawk
sudo apt-get install linux-tools-generic
sudo apt-get install linux-tools-4.13.0-45-generic
sudo apt-get install linux-cloud-tools-4.13.0-45-generic
```

##### Get from Github

```bash
git clone https://github.com/roghnin/boost-tlds.git
```

##### compile

```bash
./compiile.sh
```

##### TEST

```bash
cd trans-dev/script
python pqtest.py '../trans-compile/src/trans'
```

##### DEBUG

```bash
cd trans-compile
make -j8 CXXFLAGS='-O0 -g'
cd src
```

```bash
gdb --args ./trans <data-structure> <nthreads> <iterations> <txn-size> <key-range> <percent-insert> <percent-delete>
```

OR

```bash
libtool --mode=execute gdb trans
```

OR

```bash
gdb ./trans
```

### This concludes the guide.
