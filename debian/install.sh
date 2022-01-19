# config
cp /etc/apt/sources.list /etc/apt/sources.list.bak
nano /etc/apt/sources.list

wget http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
dpkg -i deb-multimedia-keyring_2016.8.1_all.deb 


# Developer
apt install gcc build-essential libssl-dev libedit-dev -y
apt install guake terminator zsh -y
apt install git python3-dev python-pip python3-venv virtualenvwrapper -y 
apt install tmux sqlitebrowser meld vim curl -y

# tools compile and process
apt install libffi-dev default-libmysqlclient-dev

# developer db postgres
#apt install postgresql-9.6 pgadmin3 postgresql-server-dev-9.6

# developer db mysql
#apt install mysql-server mysql-workbench

# network
apt install nmap -y

# tools
apt install gparted rar vlc mpv obs-studio kazam -y
apt install filezilla -y

# manual
chsh -s $(which zsh)
wget --no-check-certificate http://install.ohmyz.sh -O - | sh

# fuzzy auto-completion
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# pyenv
git clone https://github.com/pyenv/pyenv
mv ~/pyenv ~/.apps/
git clone https://github.com/pyenv/pyenv-virtualenv.git
mv -v pyenv-virtualenv ~/.apps/pyenv/plugins

# docker
wget -qO- https://get.docker.com | sh
usermod -aG docker scasas
# docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update && apt-get install spotify-client -y

# autologin-user=scasas
vim /etc/lightdm/lightdm.conf

# dbeaver
wget -c https://download.dbeaver.com/community/21.0.4/dbeaver-ce_21.0.4_amd64.deb
dpkg -i dbeaver-ce_21.0.4_amd64.deb 

# codium
wget -c https://github.com/VSCodium/vscodium/releases/download/1.56.2/codium_1.56.2-1620951495_amd64.deb
dpkg -i codium_1.56.2-1620951495_amd64.deb

# nvm - node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# nodejs ----> Using Debian, as root
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs
# Yarn package manager:
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# acceso directo
vim /usr/share/applications/firefox-dev.desktop

# brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y

# finish
apt update
apt ugrade
apt autoremove -f

# update stretch to buster
# sudo apt-get install netselect-apt
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
# sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
# sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list.d/*
# netselect-apt
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak.buster
# sudo cp sources.list /etc/apt/sources.list
# sudo apt update
# sudo apt upgrade
# sudo apt dist-upgrade # quizas es mejor ejecutar la siguiente linea
# sudo apt full-upgrade
# sudo apt --purge autoremove
# hostnamectl
