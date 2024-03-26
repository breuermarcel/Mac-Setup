#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# Check if Homebrew is installed
if ! command -v brew >/dev/null; then
  echo -e "${RED}Homebrew is already installed!${NC}"
  echo -e "${GREEN}Installing Homebrew...${NC}"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo -e "${GREEN}Homebrew is already installed!${NC}"
fi

# Update Homebrew
echo -e "${GREEN}Aktualisiere Homebrew...${NC}"
brew update

# Installing packages
echo -e "${GREEN}Installiere Pakete...${NC}"

# List of packages to install
PACKAGES=(
  # Terminal
  starship
  zsh
  zsh-syntax-highlighting
  zsh-autosuggestions

  # CLI Tools
  tree
  wget
  curl

  # Browser
  firefox
  google-chrome

  # Office
  microsoft-office
  slack
  zoom
  miro

  # Development
  iterm2
  git
  python
  pip
  docker
  visual-studio-code
  font-fira-code

  # Other
  btop
  alt-tap
  alfred
  appcleaner
  stat
)

# Install packages
for package in "${PACKAGES[@]}"; do
  brew install "$package"
done

# Success message
echo -e "${GREEN}Packages successfully installed!${NC}"