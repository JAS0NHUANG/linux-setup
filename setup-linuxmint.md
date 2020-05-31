# 設定 LinuxMint 做為 JavaScript 工作站

## 嘸蝦米
sudo apt install fcitx fcitx-m17n
sudo apt install fcitx-table-boshiamy
然後重新登入應該就可以使用了。
如果有問題，可以打開 fcitx 設定工具看看是那裡出了問題。

## git
sudo apt install git

## zsh 與圖示字型
sudo apt install zsh
安裝oh-my-zsh：
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
到[NERD FONTS](https://www.nerdfonts.com/)下載一個看的比較順眼的字型，這樣才能正常顯示圖示。

在 .zshrc 檔內將主題更換為 agnoster

## nodejs
因為官方軟體庫目前的版本只到 8.10，所以要安裝最新的版本可以上 nodesource 的 github 下載：
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs

## vim 與 vimrc
sudo apt install vim
但是官方軟體庫目前還是 vim 8.0，想要安裝 8.2 就要自已加入第三方軟體庫：
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

當然也可以自已到 [VIM 官網]（https://www.vim.org/)下載原始碼編譯、安裝

上 git 下載設定好的 vimrc

## openssh-server
sudo apt install openssh-server
sudo systemctl start ssh

## chromium
sudo apt install chromium-browser


## JavaScript 環境設定

### eslint 安裝
sudo npm install --global eslint
