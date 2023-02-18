#! /bin/bash


#                ______ ________________                                                  
# ____  ____________  /___( __ )_____/_/______ _________ ___________________ ___   ______ 
# __  |/_/__  __ \_  __ \  __  |___/_/ __  __ `__ \  __ `/_  __ \  ___/  __ `/_ | / /  _ \
# __>  < __  /_/ /  / / / /_/ /__/_/   _  / / / / / /_/ /_  / / / /__ / /_/ /__ |/ //  __/
# /_/|_| _  .___//_/ /_/\____/ /_/     /_/ /_/ /_/\__,_/ /_/ /_/\___/ \__,_/ _____/ \___/ 
#        /_/                                                                               


###############################################################################
# varibales
###############################################################################

backports=bullseye-backports
dotfiles="$HOME/.dotfiles"

###############################################################################
# dotfiles manager
###############################################################################

apt update
apt install git

git clone --bare https://github.com/xph8/mancave $dotfiles/.dotman/
git --git-dir=$dotfiles/.dotman/ --work-tree=$HOME config status.showUntrackedFiles no

###############################################################################
# core linux update
###############################################################################

cp apt/sources.list /etc/apt/sources.list

apt update
apt upgrade --yes

###############################################################################
# setup directory structure
###############################################################################

mkdir -p $HOME/Primary $HOME/Auxilary $HOME/Archive

###############################################################################
# install essential packages
###############################################################################

# downloaders and certificates
apt install wget curl
apt install ca-certificates gnupg lsb-release

# build essentials
apt install build-essential dkms

# restricted packages (codes, fonts, archivers)
apt install ttf-mscorefonts-installer libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi
apt install rar unrar zip unzip

# laptop power management tool
apt install tlp

###############################################################################
# install drivers
###############################################################################



###############################################################################
# setup development environment
###############################################################################

# compilers
apt install make cmake clang gcc golang rust

# python
apt install python3 python3-pip pipenv pyenv python-is-python3

# update python3 pip and essentail packages
python3 -m pip install --upgrade pip setuptools wheel

# version control
apt install git

# docker kubectl minikube helm
apt install docker

# ansible
apt install ansible

# java runtime
apt install default-jdk openjdk-17-jdk

###############################################################################
# setup terminal tools
###############################################################################

# zsh shell
apt install zsh
chsh -s /bin/zsh

# prezto

apt install -t $backports neofetch

apt install -t $backports micro neovim

apt install -t $backports ranger

# setup tmux
apt install -t $backports tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/.tmux/plugins/tpm

apt install -t $backports thefuck

# resource monitor
pip install glances

###############################################################################
# install utils
###############################################################################

python3 -m pip install --upgrade youtube-dl
apt install ffmpeg

cargo install topgrade

apt install rsync

###############################################################################
# setup flatpak
###############################################################################

apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# flatseal
flatpak install flathub com.github.tchx84.Flatseal

# reboot system?

###############################################################################
# install development software
###############################################################################

# github desktop
flatpak install flathub io.github.shiftey.Desktop

# vscode
flatpak install flathub com.vscodium.codium

# pycharm
# flatpak install flathub com.jetbrains.PyCharm-Community

# postman
flatpak install flathub com.getpostman.Postman

# virtual box

###############################################################################
# install software
###############################################################################

# essentials

# firefox
flatpak install flathub org.mozilla.firefox

# tor browser
flatpak install flathub com.github.micahflee.torbrowser-launcher

# thunderbird
flatpak install flathub org.mozilla.Thunderbird

# discord
flatpak install flathub com.discordapp.Discord

# element
flatpak install flathub im.riot.Riot

# bitwarden
flatpak install flathub com.bitwarden.desktop

# libreoffice
flatpak install flathub org.libreoffice.LibreOffice

# media

# vlc
flatpak install flathub org.videolan.VLC

# krita
flatpak install flathub org.kde.krita

# audacity
flatpak install flathub org.audacityteam.Audacity

# handbreak
flatpak install flathub fr.handbrake.ghb

# obs
flatpak install flathub com.obsproject.Studio

# kdenlive
flatpak install flathub org.kde.kdenlive

# information

# obsidian
flatpak install flathub md.obsidian.Obsidian

# xournal++
flatpak install flathub com.github.xournalpp.xournalpp

# calibre
flatpak install flathub com.calibre_ebook.calibre

# sigil
flatpak install flathub com.sigil_ebook.Sigil

# network

# syncthing
flatpak install flathub me.kozec.syncthingtk
# flatpak install flathub com.github.zocker_160.SyncThingy

# qbittorrent
flatpak install flathub org.qbittorrent.qBittorrents

# mega sync
flatpak install flathub nz.mega.MEGAsync

# proton vpn

# entertainment

# spotify
flatpak install flathub com.spotify.Client

# haruko
flatpak install flathub io.github.hakuneko.HakuNeko

# utility

# bottles
flatpak install flathub com.usebottles.bottles

###############################################################################
# install games
###############################################################################

# steam
flatpak install flathub com.valvesoftware.Steam

# minecraft launcher
flatpak install flathub com.mojang.Minecraft

# prism launcher
flatpak install flathub org.prismlauncher.PrismLauncher

# overwolf

###############################################################################
# setup desktop
###############################################################################

apt install -t $backports polybar
# executable permisions to launch.sh chmod +x ~/.config/polybar/launch.sh

api install -t $backports rofi
