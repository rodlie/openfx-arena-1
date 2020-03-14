#!/bin/bash
# MSYS2 wrapper for Travis CI Windows

env
uname -a
ls /
pwd
ls /mingw64/lib/pkgconfig

pacman -Syu --noconfirm openfx-arena-sdk || pacman -Syu --noconfirm openfx-arena-sdk

ls /mingw64/lib/pkgconfig

#export MSYSTEM_CARCH=x86_64
#export MSYSTEM_CHOST=x86_64-w64-mingw32
#export MINGW_PACKAGE_PREFIX=mingw-w64-x86_64
#export MSYSTEM_PREFIX=/mingw64
#export MINGW_CHOST=x86_64-w64-mingw32
#export MSYSTEM=MINGW64
#export MINGW_PREFIX=/mingw64
#export PKG_CONFIG_PATH=/mingw64/lib/pkgconfig:/mingw64/share/pkgconfig

make MINGW=1
