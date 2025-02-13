#!/bin/bash

export ANDROID_NDK_HOME=${HOME}/Downloads/android-ndk-r27c
export CC=${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang
export CXX=${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++

make clean

./configure --cc=${CC} --cxx=${CXX}

make library -j8
