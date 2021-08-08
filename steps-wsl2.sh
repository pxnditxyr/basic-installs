sudo apt update -y
sudo apt upgrade -y

# Remove git
sudo apt remove --auto-remove git -y
sudo apt purge --auto-remove git -y

# Install lastest version of git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt install git -y

git clone 

# Install basic packages
sudo apt install curl -y
sudo apt install wget -y

# Install lastest version of nvim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -y
chmod u+x nvim.appimage
sudo ./nvim.appimage --appimage-extract
sudo ./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf nvim.appimage

# Install nodejs programing pack
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm i --global yarn -y

# Install zsh
sudo apt install zsh -y

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
