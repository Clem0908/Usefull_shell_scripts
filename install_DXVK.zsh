#!/bin/zsh

# Script to assist for installing DVXK in a Wine prefix
# Simply place it into the root folder of a DXVK release (where the folders x32 and x64 are)

WHITE='\033[0m'

if [[ "$WINEPREFIX" == "" ]]
then
	RED='\033[0;31m'
	echo -n "${RED}--> "
        echo "Make sure to correctly set up a WINEPREFIX environment and the corresponding variable :"
	echo "${WHITE}Example : "
	echo "WINEPREFIX=[absolute_path] winecfg"
	echo "Then :"
	echo "export WINEPREFIX=[absolute_path]"
	echo "Finally :"
	echo "./install_DXVK.zsh"
	exit -1
fi

DIR64="$WINEPREFIX/drive_c/windows/system32"

if [ -d "$DIR64" ]
then
	cp ./x64/*.dll $WINEPREFIX/drive_c/windows/system32
fi

cp ./x32/*.dll $WINEPREFIX/drive_c/windows/syswow64

winecfg > /dev/null 2>&1
wineserver -k

GREEN='\033[0;32m'
echo -n "${GREEN}--> "
echo "DXVK installed in the prefix"
