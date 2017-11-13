#!/bin/sh -x

dotfiles=$(cd $(dirname $0) && pwd)

# Copy git settings.
rm -f ~/.gitconfig
cp $dotfiles/.gitconfig ~/.gitconfig
mkdir -p ~/.config/git
rm -f ~/git/ignore
cp $dotfiles/.config/git/ignore ~/.config/git/ignore

# Copy atom settings.
mkdir -p ~/.atom
rm -f ~/.atom/config.cson
cp $dotfiles/.atom/config.cson ~/.atom/config.cson
rm -f ~/.atom/keymap.cson
cp $dotfiles/.atom/keymap.cson ~/.atom/keymap.cson

# Install atom packages.
apm install --packages-file $dotfiles/.atom/packages.txt
