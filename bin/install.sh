hline="-------------------------------------------------------------"

echo $hline

if ! type "zsh" > /dev/null;then
  sudo apt install zsh
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  zsh --version
fi

echo $hline


if ! type "nodejs" > /dev/null;then
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
  sudo apt install nodejs
else
  nodeversion=`nodejs --version`
  echo "nodejs: $nodeversion"
fi

echo $hline

if ! type "vim" > /dev/null;then
  sudo add-apt-repository ppa:jonathonf/vim
  sudo apt update
  sudo apt install vim
else
  vim --version | grep "VIM - "
fi

echo $hline

sshdconfig=/etc/ssh/sshd_config
if ! [ -f "$sshdconfig" ] > /dev/null;then
  sudo apt install openssh-server
  sudo systemctl start ssh
else
  echo "$sshdconfig exists."
fi

echo $hline

if ! type "chromium-browser" > /dev/null;then
  sudo apt install chromium-browser
else
  chromium-browser --version
fi

echo $hline



exit 0
