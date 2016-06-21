#!/bin/bash

dnf update -y
cd mpv-build
git pull
./rebuild -j$(nproc)
cp -f mpv/build/mpv /output/
