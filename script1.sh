#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Your Name"
SOFTWARE="Python"

KERNEL_VERSION=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
DATE_TIME=$(date)
UPTIME=$(uptime -p)

echo "==============================="
echo " OSS Audit Report - $STUDENT_NAME"
echo "==============================="
echo "Software Chosen : $SOFTWARE"
echo "Kernel Version  : $KERNEL_VERSION"
echo "User Name       : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $DATE_TIME"
echo "License         : GNU General Public License"