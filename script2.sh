#!/bin/bash
# Script 2: Python Package Inspector

PACKAGE="python3"

if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed."
    VERSION=$($PACKAGE --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3)
        echo "Python: A powerful language built by community contributions"
        ;;
    git)
        echo "Git: Version control system for developers"
        ;;
    vlc)
        echo "VLC: Open-source media player"
        ;;
    *)
        echo "Unknown package"
        ;;
esac