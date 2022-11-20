#!/bin/bash
mkdir -p build/DEBIAN
cp control build/DEBIAN/
wget https://downloads.tuxfamily.org/godotengine/3.5.1/Godot_v3.5.1-stable_osx.universal.zip
unzip Godot_v3.5.1-stable_osx.universal.zip 
mkdir -p build/opt/procursus/Applications
mv Godot.app build/opt/procursus/Applications
rm Godot_v3.5.1-stable_osx.universal.zip
dpkg-deb --build build
rm -rf build
mv build.deb ../debs/godot.deb 