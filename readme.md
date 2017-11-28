## Install dotfiles.

### Preparation.
 - Install git.
 - Set proxy for git if needed.
  - git config --system --add https.proxy https://???:8080
  - git config --system --add http.proxy https://???:8080
 - Install atom and apm shell command.
 - Set proxy for atom if needed.
  - apm config set https-proxy https://???:8080
  - apm config set proxy https://???:8080

### Install on Mac.
 1. git clone https://???/dotfiles
 2. chmod +x dotfiles/install.sh
 3. dotfiles/install.sh

### Install on Windows PC.
 1. git clone https://???/dotfiles
 2. dotfiles¥install.bat

### Backup atom packages.
 1. cd dotfiles/
 2. git pull
 3. apm list -bi > .atom/packages.txt
 4. git add .atom/packages.txt
 5. git commit -m "Update packages."
 6. git push
