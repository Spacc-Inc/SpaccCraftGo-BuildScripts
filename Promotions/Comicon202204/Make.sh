#!/bin/sh

cd "$( dirname "$( realpath "$0" )" )"

mkdir -p Dist
cd Dist

../Src/Git.sh
../Src/Videos.sh
../Src/Website.sh
