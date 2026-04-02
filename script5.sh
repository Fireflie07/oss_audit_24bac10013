#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: eliza25147

echo "--- Personal Open Source Manifesto Generator ---"
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose and save the manifesto
echo "Open Source Manifesto by $(whoami)" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "-------------------------------------------" >> $OUTPUT
echo "As an engineer, I recognize the power of $TOOL." >> $OUTPUT
echo "To me, software freedom is defined by $FREEDOM." >> $OUTPUT
echo "I commit to building $BUILD and sharing it with the community." >> $OUTPUT

echo ""
echo "Success! Your manifesto has been saved to $OUTPUT"
echo "--- PREVIEW ---"
cat $OUTPUT#!/bin/bash
# Script 5: Manifesto
read -p "What open source tool do you love? " TOOL
OUTPUT="manifesto_$(whoami).txt"
echo "I, $(whoami), commit to using $TOOL freely." > $OUTPUT
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
