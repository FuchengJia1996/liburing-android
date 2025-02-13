#!/bin/bash

make clean

./configure --cc=gcc --cxx=g++

make library -j8
