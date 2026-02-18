#! /bin/bash

### Install zsh
sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh

### Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Install zsh addons
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

### Update .zshrc
sed -i "s/(git)/(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g" ~/.zshrc

### Addons for vim
cat > .vimrc << 'EOF'
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
EOF

### Apply changes to current shell
source .zshrc .vimrc
