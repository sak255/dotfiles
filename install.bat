: bat

set dotfiles=%~dp0

: Copy git settings.
del /f %home%\.gitconfig
copy %dotfiles%\.gitconfig %home%\.gitconfig
mkdir %home%\.config\git
del /f %home%\git\ignore
copy %dotfiles%\.config\git\ignore %home%\.config\git\ignore

: Copy atom settings.
mkdir %home%\.atom
del /f %home%\.atom\config.cson
copy %dotfiles%\.atom\config.cson %home%\.atom\config.cson
del /f %home%\.atom\keymap.cson
copy %dotfiles%\.atom\keymap.cson %home%\.atom\keymap.cson

: Install atom packages.
apm install --packages-file %dotfiles%\.atom\packages.txt
