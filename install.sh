#!/bin/sh -x

dotfiles=$(cd $(dirname $0) && pwd)

# Link git settings.
rm ~/.gitconfig
ln -sf $dotfiles/.gitconfig ~/.gitconfig
mkdir -p ~/.config/git
rm ~/.config/git/ignore
ln -sf $dotfiles/.config/git/ignore ~/.config/git/ignore

# Link atom settings.
mkdir -p ~/.atom
rm ~/.atom/config.cson
ln -sf $dotfiles/.atom/config.cson ~/.atom/config.cson
rm ~/.atom/keymap.cson
ln -sf $dotfiles/.atom/keymap.cson ~/.atom/keymap.cson

# Install atom packages.
apm install --packages-file $dotfiles/.atom/packages.txt
