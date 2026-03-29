#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Your Name" # Fill in your name
SOFTWARE_CHOICE="Git"    # Fill in your chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting the pretty name of the distro from os-release
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date +"%A, %B %d, %Y - %T")

# --- Display ---
echo "================================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================================"
echo "Date   : $CURRENT_DATE"
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "------------------------------------------------"
echo "License: The Linux kernel is released under the"
echo "         GNU General Public License (GPL) v2."
echo "================================================"