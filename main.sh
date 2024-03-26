#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew >/dev/null; then
  echo -e "${RED}Homebrew ist nicht installiert!${NC}"
  echo -e "${GREEN}Installiere Homebrew...${NC}"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo -e "${GREEN}Homebrew ist bereits installiert!${NC}"
fi

