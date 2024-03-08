# fish のインストール
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt -y install fish
mkdir ~/.config
cp -f config.fish ~/.config/fish/config.fish
which fish
echo "which fish で表示されたパスを入力して下さい。"
chsh
