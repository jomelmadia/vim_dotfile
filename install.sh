#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

download_from_github() {
  wget "https://raw.githubusercontent.com/jomelmadia/vim_dotfile/master/.vimrc" -P /home/$USER/
}

if [[ -e /home/$USER/.vimrc ]]; then
  rm /home/$USER/.vimrc
  download_from_github
  echo  "Your .vimrc file was replaced"
  echo  "Run \`:PlugInstall\` inside vim"
else
  download_from_github
  echo ".vimrc file was downladed from the repository"
  echo  "Run \`:PlugInstall\` inside vim"
fi
