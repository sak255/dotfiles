: bat

set dotfiles=%~dp0

: Link git settings.
del %home%\.gitconfig
mklink %home%\.gitconfig %dotfiles%\.gitconfig
mkdir %home%\.config\git
del %home%\.config\git\ignore
mklink %home%\.config\git\ignore %dotfiles%\.config\git\ignore

: Link atom settings.
mkdir %home%\.atom
del %home%\.atom\config.cson
mklink %home%\.atom\config.cson %dotfiles%\.atom\config.cson
del %home%\.atom\keymap.cson
mklink %home%\.atom\keymap.cson %dotfiles%\.atom\keymap.cson

: Install atom packages.
apm install --packages-file %dotfiles%\.atom\packages.txt
