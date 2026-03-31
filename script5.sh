#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "Tool you use daily: " TOOL
read -p "Meaning of freedom (one word): " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "On $DATE, I believe in open source." > $FILE
echo "I use $TOOL regularly." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "I want to build $BUILD and share it with the world." >> $FILE

echo "Manifesto saved in $FILE"
cat $FILE