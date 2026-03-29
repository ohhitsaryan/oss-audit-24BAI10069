#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose paragraph and write to $OUTPUT
echo "======================================" > "$OUTPUT"
echo "      MY OPEN SOURCE MANIFESTO        " >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I rely heavily on $TOOL in my day-to-day workflow. To me," >> "$OUTPUT"
echo "the core philosophy of open source boils down to one word: $FREEDOM." >> "$OUTPUT"
echo "If I had the time and resources to contribute back, I would" >> "$OUTPUT"
echo "build $BUILD and share it freely with the community." >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "---------------------------------------"
cat "$OUTPUT"

# --- Alias Concept Demonstration ---
# You can create a shortcut command (alias) to run this generator 
# from anywhere by adding this line to your ~/.bashrc file:
# alias manifesto='~/path/to/this/script.sh'