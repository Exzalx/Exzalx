#!/bin/bash

# Color codes
RED='\033[0;31m'
GRN='\033[0;32m'
YEL='\033[1;33m'
NC='\033[0m' # No color

clear

# Big green skull banner
echo -e "\n\n\n"
echo -e "${GRN}                 ☠️                 ${NC}"
echo -e "\n\n"

echo -e "${YEL}🔗 Image + pdf + png + mp3 + jpg + mp4  - Exzal~x ${NC}"
echo

# Input prompts
echo -ne "${GRN}📸 Image file path (e.g. /home/user/photo.jpg): ${NC}"
read img

echo -ne "${GRN}🗜️ Zip file path (e.g. /home/user/file.zip): ${NC}"
read zip

echo -ne "${GRN}💾 Output file name (e.g. output.jpg): ${NC}"
read out

# Expand ~ if used
img=$(eval echo "$img")
zip=$(eval echo "$zip")
out=$(eval echo "$out")

# File existence check
if [[ ! -f "$img" ]]; then
  echo -e "${RED}❌ Error: Image file not found at: $img${NC}"
  exit 1
fi

if [[ ! -f "$zip" ]]; then
  echo -e "${RED}❌ Error: ZIP file not found at: $zip${NC}"
  exit 1
fi

# Binding process
cat "$img" "$zip" > "$out"

# Completion message
echo -e "${GRN}✅ Done! Output file created: ${out}${NC}"
echo
