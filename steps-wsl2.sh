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
# curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage # Nightly Currently Not Found
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo ./nvim.appimage --appimage-extract
sudo ./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf nvim.appimage

# Clone my configs
git clone https://github.com/pxnditxyr/nvim.git ~/.config/nvim/

# Install nodejs programing pack
sudo apt install nodejs -y
sudo apt install npm -y
# sudo npm i --global yarn -y

# Install python3 pip3
sudo apt install python3-pip -y


# Install provider python3
python3 -m pip install --user --upgrade pynvim

# Install ripgrep
sudo apt install ripgrep -y

# Update NodeJs and NPM
sudo apt remove nodejs -y
sudo apt-get purge --auto-remove nodejs -y

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install npm@latest -g

# Install Java
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-11-jre-headless -y
sudo apt install default-jdk -y

# Install zsh
sudo apt install zsh -y
zsh

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# Setting zsh as default
chsh -s $(which zsh)

