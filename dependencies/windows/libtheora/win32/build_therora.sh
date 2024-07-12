#!/bin/bash

echo "---+++--- Building Theora (Static) ---+++---"

# Set SRCROOT if not already set
if [ -z "$SRCROOT" ]; then
  SRCROOT="/mnt/d/xiph"
fi

# Save old environment variables
OLDPATH=$PATH
OLDINCLUDE=$INCLUDE
OLDLIB=$LIB

# Call vcvars32.bat to set up the Visual Studio environment
source "/c/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Auxiliary/Build/vcvars32.bat"

echo "Setting include paths for Theora"
INCLUDE="$INCLUDE:$SRCROOT/ogg/include:$SRCROOT/theora/include"

echo "Compiling..."
msdev theora_static.dsp /useenv /make "theora_static - Win32 Release" /rebuild

# Restore old environment variables
PATH=$OLDPATH
INCLUDE=$OLDINCLUDE
LIB=$OLDLIB