set dotfiles=%~dp0

cd %home%
mklink .gitconfig %dotfiles%\.gitconfig
mklink /d .config %dotfiles%\.config
mklink /d .atom %dotfiles%\.atom

cd %dotfiles%\.atom\
apm install --packages-file packages.txt
