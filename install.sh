#!/bin/sh

dotfiles=`dirname $0`

cd ~/
ln -sf $dotfiles/.gitconfig
ln -sf $dotfiles/.config
ln -sf $dotfiles/.atom

cd $dotfiles/.atom/
apm install --packages-file packages.txt
