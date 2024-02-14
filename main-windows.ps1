winget import -i winget.json

Copy-Item "./alacritty.yml" -Destination "C:\Users\$env:username\AppData\Roaming\alacritty"

# WSL のインストール
wsl --install
wsl --install Ubuntu-22.04
