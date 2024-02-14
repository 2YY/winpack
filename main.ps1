# winget の設定をインポート
winget import -i winget.json

Copy-Item "./alacritty.yml" -Destination "C:\Users\$env:username\AppData\Roaming\alacritty"
