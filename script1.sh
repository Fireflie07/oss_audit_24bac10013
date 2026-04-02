#!/bin/bash
# Script 1: System Identity Report
# Author: eliza25147
# Course: Open Source Software

# --- Variables
STUDENT_NAME="eliza25147"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds)
DATE_TIME=$(date)

# --- Display Output
echo "=========================================="
echo "      $SOFTWARE_CHOICE Open Source Audit"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "System Date  : $DATE_TIME"
echo "=========================================="
echo "OS Distro    : $DISTRO"
echo "Kernel Ver   : $KERNEL"
echo "Current User : $USER_NAME"
echo "Home Dir     : $HOME"
echo "System Uptime: $UPTIME"
echo "=========================================="
echo "Note: This OS is covered by the GNU GPL License."
