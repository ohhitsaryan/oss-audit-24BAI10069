#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="firefox"

# Check if package is installed
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo "------------------------------------------------"

# A case statement that prints a one-line philosophy note
case $PACKAGE in
    httpd) 
        echo "Apache: the web server that built the open internet." 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps." 
        ;;
    git) 
        echo "Git: the version control system powering open collaboration." 
        ;;
    vlc) 
        echo "VLC: the universal media player that belongs to everyone." 
        ;;
    firefox) 
        echo "Firefox: championing an open, accessible, and private web." 
        ;;
    *)
        echo "$PACKAGE: Another great tool in the open-source ecosystem."
        ;;
esac
