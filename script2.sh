#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: eliza25147
# Course: Open Source Software

# Define the package to inspect
PACKAGE="python3"

echo "Searching for $PACKAGE in the local package database..."
echo "-------------------------------------------------------"

# Check if package is installed using dpkg (for Ubuntu/Debian)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed on this system."
    echo ""
    # Extract Version and License information
    dpkg -s $PACKAGE | grep -E 'Package:|Version:|Maintainer:'
    
    echo ""
    echo "--- Open Source Philosophy Note ---"
    # Case statement to print a description based on the package name
    case $PACKAGE in
        python3)
            echo "Python: A community-driven language that prioritizes readability and developer happiness."
            ;;
        httpd|apache2)
            echo "Apache: The robust web server that built the foundations of the open internet."
            ;;
        vlc)
            echo "VLC: A testament to student innovation, providing a free media player for all formats."
            ;;
        *)
            echo "A valuable component of the Free and Open Source Software (FOSS) ecosystem."
            ;;
    esac
else
    echo "STATUS: $PACKAGE is NOT installed."
    echo "Please install it using 'sudo apt install $PACKAGE' to complete the audit."
fi

echo "-------------------------------------------------------"
