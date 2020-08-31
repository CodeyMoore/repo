#!/bin/bash

echo

./clean.sh

echo
echo "Rebuilding package list..."
echo "--------------------------"

#./dpkg-scanpackages -m ./debians /dev/null > Packages
dpkg-scanpackages -m ./debians /dev/null > Packages
rm -f Packages.bz2
bzip2 -k Packages

echo "--------------------------"
echo "Done."
echo
