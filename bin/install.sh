if ! type "zsh" > /dev/null;then
  sudo apt install zsh
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  zsh --version
fi

echo "----------"


if ! type "nodejs" > /dev/null;then
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
  sudo apt install nodejs
else
  echo "nodejs version: "
  nodejs --version
fi

echo "----------"

if ! type "vim" > /dev/null;then
  sudo add-apt-repository ppa:jonathonf/vim
  sudo apt update
  sudo apt install vim
else
  vim --version | grep "VIM - "
fi

exit 0
