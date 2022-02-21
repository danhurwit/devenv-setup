#!/bin/bash

user_input() {
	echo -n "What OS is this install for (mac/linux)?"
	read os_type
}

while true; do 
	user_input
	if [[ $os_type == "mac" ]]
	then
		installer="brew"
		font_dir="~/Library/Fonts"
		break
	elif [[ $os_type == "linux" ]]
	then
		installer="apt"
		mkdir ~/.fonts
		font_dir="~/.fonts"
		break
	else
		echo "Please choose a valid OS"
	fi
done

if [[ $os_type == "mac" ]]
then
	echo "Installing mac specific dependencies"
	eval "$installer update" 
	eval "$installer install iterm2"
	eval "$installer install autojump"
else 
	echo "Installing linux specific dependencies"
	eval "$installer update" 
	eval "$installer install curl" 
	eval "$installer install konsole"
	
fi

# vim stuff
eval "$installer install vim"
env -i git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install zsh
eval "$installer install zsh" 
# set zsh as default
chsh -s $(which zsh)

# install oh my zsh
eval "sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)""

# copy config files 
/bin/bash ./copy_dotfiles.sh

# install oh-my-zsh plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
env -i git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
env -i git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
env -i  git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# install vim plugins
vim +PluginInstall +qall
vim +call +mkdp#util#install()

eval "cd $font_dir  && {
	curl -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	curl -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
	curl -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
	curl -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
	cd -;
	}"
