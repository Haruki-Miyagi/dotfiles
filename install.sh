#!/bin/sh

echo "Setting up Mac..."

# Check xcode
if [[ "$(xcode-select -p)" == "" ]]; then
  echo "\nInstalling Xcode… "
  xcode-select --install
  echo "Done"
else
  echo "\nXcode already installed."
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo 'installing homebrew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo '\nhomebrew already installed.'
fi

# Update Homebrew recipes
brew update

# Can't do bundle install without mas being seutp first
if test ! $(which mas); then
	brew install mas
fi
# mas signin $(mas account)

# Move Brewfile into place
ln -fs $(pwd)/Brewfile ~/

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle
brew cleanup
brew cask cleanup

# Install fisher(fisherman)
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# Install oh-my-fish/plugin-peco
fisher add oh-my-fish/plugin-peco

# Install fish config
ln -fs $(pwd)/fish/config.fish ~/.config/fish/

# Make fish the default shell environment
# 切り替わらなければ、sudo vi /etc/shellsの末尾に /usr/local/bin/fish を追加
chsh -s $(which fish)

# ZSH Config (Just in case)

# Vim Setup
# Install .vimrc
ln -fs  $(pwd)/vim/.vimrc ~/
ln -fs  $(pwd)/vim/.vim ~/

