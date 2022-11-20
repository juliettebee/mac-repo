echo "Removing deb folder"
rm -rf debs
mkdir debs
echo "Building battery buddy"
cd battery-buddy && ./build.sh
echo "Building godot"
cd godot && ./build.sh
echo "Removing old files"
rm Packages Packages.xz Packages.bz2 Packages.lzma

echo "Scanning"
dpkg-scanpackages -m  debs/ /dev/null > Packages
echo "Compressing"
xz -5fkev Packages > Packages.xz
bzip2 -5fkv Packages > Packages.bz2
xz -5fkev --format=lzma Packages > Packages.lzma