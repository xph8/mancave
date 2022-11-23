#! /bin/bash


#                ______ _______                                                          
# ____  ____________  /___( __ )      _______ _________ ___________________ ___   ______ 
# __  |/_/__  __ \_  __ \  __  |________  __ `__ \  __ `/_  __ \  ___/  __ `/_ | / /  _ \
# __>  < __  /_/ /  / / / /_/ /_/_____/  / / / / / /_/ /_  / / / /__ / /_/ /__ |/ //  __/
# /_/|_| _  .___//_/ /_/\____/        /_/ /_/ /_/\__,_/ /_/ /_/\___/ \__,_/ _____/ \___/ 
#        /_/                                                                             


###############################################################################
# varibales
###############################################################################

backports=bullseye-backports
dotfiles="$HOME/.dotfiles"

###############################################################################
# core linux update
###############################################################################

cp apt/sources.list /etc/apt/sources.list

apt update
apt upgrade --yes

###############################################################################
# dotfiles manager
###############################################################################

apt install git

git clone --bare https://github.com/xph8/dotfiles $dotfiles/.dotman/
git --git-dir=$dotfiles/.dotman/ --work-tree=$HOME config status.showUntrackedFiles no

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
apt install build-essential dkms linux-headers-$(uname -r)

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
apt install cmake clang gcc golang rust

# python
apt install python3 python3-pip pipenv pyenv python-is-python3

# update python3 pip and install pip packages
PIP_PACKAGES=(
    pip
    setuptools
    wheel
)
python3 -m pip install --upgrade "${PIP_PACKAGES[@]}";

# version control
apt install git

# utils
apt install make tmux

# docker kubectl minikube helm
apt install docker

# ansible
apt install ansible

# jenkins docker container
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v ~/jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11
docker stop jenkins

# java runtime
apt install default-jdk
apt install openjdk-17-jdk

###############################################################################
# setup terminal
###############################################################################

# zsh shell
apt install zsh
chsh -s /bin/zsh # does not work? maybe copy .zsh files first?

# editors
apt install nano neovim

apt install -t $backports ranger neofetch

###############################################################################
# install utils
###############################################################################

PIP_PACKAGES=(
    youtube-dl
)
python3 -m pip install --upgrade "${PIP_PACKAGES[@]}";
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

###############################################################################
# install games
###############################################################################

# steam
flatpak install flathub com.valvesoftware.Steam

# minecraft launcher
flatpak install flathub com.mojang.Minecraft

# overwolf

###############################################################################
# setup desktop
###############################################################################

apt install -t $backports polybar
# executable permisions to launch.sh chmod +x ~/.config/polybar/launch.sh

api install -t $backports rofi
