#!/bin/bash

# Color codes
RED='\033[0;31m'
GRN='\033[0;32m'
YEL='\033[1;33m'
CYN='\033[0;36m'
BLU='\033[1;34m'
MAG='\033[0;35m'
NC='\033[0m' # No color

# Banner colors
BWHITE='\033[47m' 
PINK='\033[95m'  # Bright magenta for pink text

clear

# Banner display
echo -e "${BWHITE}${PINK}  # # # #   #           #  # # # # # #      #         #                         ${NC}"
echo -e "${BWHITE}${PINK}  #            #       #              #   #   #       #                         ${NC}"
echo -e "${BWHITE}${PINK}  #              #   #             #     #     #      #                         ${NC}"
echo -e "${BWHITE}${PINK}  # # #            #            #       #       #     #                         ${NC}"
echo -e "${BWHITE}${PINK}  #              #   #       #         ###########    #                         ${NC}"
echo -e "${BWHITE}${PINK}  #            #      #   #           #           #   #                         ${NC}"
echo -e "${BWHITE}${PINK}  # # # #   #          #  # # # # # #              #  # # # # # #               ${NC}"
echo

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
echo -e ""ated: ${out}${NC}"
echo -e ""
