
all: pull source

source:
cp ~/.dotfiles/.aliases ~/.aliases
cp ~/.dotfiles/.zshrc ~/.zshrc
cp ~/.dotfiles/.bashrc ~/.bashrc
cp ~/.dotfiles/.bash_profile ~/.bash_profile

pull:
git pull

antigen:
git clone https://github.com/zsh-users/antigen.git

install: antigen source
