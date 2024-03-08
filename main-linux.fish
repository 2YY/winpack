cd ~

# FUSE のインストール
sudo apt update
sudo add-apt-repository universe
sudo apt -y install libfuse2t

sudo apt-get -y install git
sudo apt-get -y install build-essential
sudo apt-get -y install cmake
sudo apt-get -y install libssl-dev
sudo apt-get -y install mingw-w64
sudo apt-get -y install python3-pip

# Lazygit のインストール
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_0.40.2_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# NeoVim のインストール
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
fish_add_path /opt/nvim

# AstroNvim のインストール
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/2YY/astronvim_config ~/.config/nvim/lua/user

# mise のインストール
curl https://mise.run | sh
echo '~/.local/bin/mise activate fish | source' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
mise use --global node@20

# Rust のインストール
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin

cargo install bat --locked
cargo install lsd
cargo install ripgrep
cargo install starship --locked

# Starship の設定
echo 'starship init fish | source' >> ~/.config/fish/config.fish
cp starship.toml ~/.config/starship.toml

# pip パッケージのインストール
pip install python-dotenv requests pynvim==0.5.0 prompt-toolkit
pip install tiktoken
