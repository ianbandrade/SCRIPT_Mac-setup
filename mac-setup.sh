#!/bin/bash

# Mac setup
# MacOS version: Mojave 10.14.5

#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Apps that aren't in the App Store 
apps=(
visual-studio-code
brave-browser
discord 
insomnia
deezer
intellij-idea
docker
keka
whatsapp
microsoft-teams
hyper
notion
dbeaver-community
font-fira-code
)

# Install all apps
brew cask install ${apps[@]}

# Install App Store CLI installer
brew install mas

# App Store apps
appStoreApps(
497799835 # XCode 
)

# Install App Store apps
mas install ${appStoreApps[@]}

# Setup Git
git config --global user.name "your_username"
git config --global user.email "your_email@mail.com"
git config --global commit.gpgsign true

# Update installed apps and clear caches
brew update
brew upgrade
brew cask upgrade
brew cleanup
rm -rf ~/Library/Caches/Homebrew
