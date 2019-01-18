#!/bin/bash

download_from_github() {
  wget "https://raw.githubusercontent.com/jomelmadia/vim_dotfile/master/.vimrc" -P /home/$USER/
}


if [[ -e /home/$USER/.vimrc ]]; then
  rm /home/$USER/.vimrc
  download_from_github
  echo  "Your .vimrc file was replaced"
else
  download_from_github
  echo ".vimrc file was downloaded from the repository"
fi