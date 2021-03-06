#!/bin/sh
# -- Install

START_TIME=$SECONDS

# CWD
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ""
echo ""
echo ""
echo "----- Install vcprompt -----"

mkdir -pv "$DOTFILES_DIR/bin"
curl -L https://github.com/djl/vcprompt/raw/master/bin/vcprompt > "$DOTFILES_DIR/bin/vcprompt"
chmod +x "$DOTFILES_DIR/bin/vcprompt"

echo ""
echo ""
echo ""
echo "----- Install sote -----"

git clone https://github.com/leny/sote ~/.sote

echo ""
echo ""
echo ""
echo "----- Link dotfiles -----"

ln -sfhv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfhv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfhv "$DOTFILES_DIR/editor/.editorconfig" ~
ln -sfhv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfhv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfhv "$DOTFILES_DIR/hg/.hgignore_global" ~
ln -sfhv "$DOTFILES_DIR/curl/.curlrc" ~
ln -sfhv "$DOTFILES_DIR/wget/.wgetrc" ~

echo ""
echo ""
echo ""
echo "----- Install homebrew & cask -----"

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

echo ""
echo ""
echo ""
echo "----- Install brew's -----"

brew bundle "$DOTFILES_DIR/Brewfile"

echo ""
echo ""
echo ""
echo "----- Install app's -----"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle "$DOTFILES_DIR/Caskfile"

echo ""
echo ""
echo ""
echo "----- Install homebrew's bash -----"

grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash

echo ""
echo ""
echo ""
echo "----- Install useful global npm packages -----"
npm install -g bower browserify codo coffee-script coffeegulp docco grunt grunt-cli grunt-devtools grunt-init gulp hexo mocha phantomas stylus tankipas vibox vows woazar yo
git clone https://github.com/gruntjs/grunt-init-gruntfile ~/.grunt-init/gruntfile
git clone https://github.com/gruntjs/grunt-init-gruntplugin ~/.grunt-init/gruntplugin
git clone https://github.com/gruntjs/grunt-init-node ~/.grunt-init/node
git clone https://github.com/gruntjs/grunt-init-jquery ~/.grunt-init/jquery

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo ""
echo ""
echo ""
echo "-------------------------"
echo "----- Install ended -----"
echo "-------------------------"
echo "Duration : $(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
echo "-------------------------"
