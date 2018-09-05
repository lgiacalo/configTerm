
all: pull source update

source:
	cp ~/.dotfiles/.aliases ~/.aliases
	cp ~/.dotfiles/.zshrc ~/.zshrc
	cp ~/.dotfiles/.bashrc ~/.bashrc
	cp ~/.dotfiles/.bash_profile ~/.bash_profile
	cp ~/.dotfiles/.vimrc ~/.vimrc

pull:
	git pull

update:
	antigen selfupdate
	antigen update

antigen:
	git clone https://github.com/zsh-users/antigen.git

pathogen:
	mkdir -p ~/.vim/autoload ~/.vim/bundle 2> /dev/null || true
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone "git://github.com/scrooloose/nerdtree" ~/.vim/bundle/nerdtree

install: antigen pathogen source
