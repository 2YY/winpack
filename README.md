# winpack

2YY の自宅の Windows PC に環境構築することだけを目的として開発されていますが、お揃いにしたい方は自由に使うことが出来ます。

## 使い方

1. このリポジトリの ZIP ファイルをダウンロード
2. ダウンロードした ZIP ファイルを解凍し、その中に入っている `main-windows.ps1` を実行
  1. 既にWSLやUbuntuを導入済の場合、このスクリプトを再実行すると壊れる可能性が有るため、その場合はその他の行を手動実行したほうがよさそう。
4. WSL を起動する `wsl -d Ubuntu-22.04`
5. `sh main-fish.sh` を実行
6. `fish main-linux.fish` を実行
7. https://www.nerdfonts.com/font-downloads に Web ブラウザでアクセスし、`JetBrainsMono Nerd Font` をダウンロード・インストール
  1. これはWindows側 (WSLの外) で行う

## 概要

- UNDER CONSTRUCTION
- プライベート用のPCでのみ使うことを想定する。(仕事用のPCに入れたくないものが有っても気にしない)
