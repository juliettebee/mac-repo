#!/bin/bash
mkdir -p build/DEBIAN
cp control build/DEBIAN/
wget https://batterybuddy.app/releases/Battery%20Buddy.zip
unzip Battery\ Buddy.zip
mkdir -p build/opt/procursus/Applications
mv Battery\ Buddy.app build/opt/procursus/Applications
rm Battery\ Buddy.zip
dpkg-deb --build build
rm -rf build
mv build.deb ../debs/battery-buddy.deb 