#! /bin/bash

# /etc/apt/sources.list


###############################################################################
# core linux update
###############################################################################

sudo apt update
sudo apt upgrade --yes
sudo apt distro-update

###############################################################################
# setup directory structure
###############################################################################

mkdir -p ${HOME}/Primary ${HOME}/Auxilary ${HOME}/Archive

###############################################################################
# install essential packages
###############################################################################

# downloaders and certificates
sudo apt install wget curl
sudo apt install ca-certificates gnupg lsb-release

# build essentials
sudo apt install build-essential dkms linux-headers-$(uname -r)

# restricted packages (codes, fonts, archivers)
sudo apt install ttf-mscorefonts-installer libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi
sudo apt install rar unrar zip unzip

# laptop power management tool
sudo apt install tlp

###############################################################################
# setup development environment
###############################################################################

# compilers
sudo apt install cmake clang gcc golang

# editors
sudo apt install nano vim

# version control
sudo apt install git

# zsh shell
sudo apt install zsh
chsh -s /bin/zsh # does not work? maybe copy .zsh files first?

# load zpreto files

# utils
sudo apt install make tmux

# python
sudo apt install python3 python3-pip pipenv pyenv python-is-python3

# setup venv

# update python3 pip and install pip packages
PIP_PACKAGES=(
    pip
    setuptools
    wheel
    youtube-dl
)
python3 -m pip install --upgrade "${PIP_PACKAGES[@]}";

# docker kubectl minikube helm
sudo apt install docker

# ansible
sudo apt install ansible # pyhton?

# jenkins docker container
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v ~/jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11
docker stop jenkins

# java runtime
sudo apt install default-jdk
sudo apt install openjdk-17-jdk

###############################################################################
# install utils
###############################################################################

PIP_PACKAGES=(
    youtube-dl
)
python3 -m pip install --upgrade "${PIP_PACKAGES[@]}";
sudo apt install ffmpeg

sudo apt install rsync
sudo apt install synaptic neofetch

###############################################################################
# clone dotfiles
###############################################################################


###############################################################################
# install software
###############################################################################

sudo apt install -t bullseye-backports libreoffice
# syncthing

###############################################################################
# flatpak
###############################################################################

sudo apt install flatpak


###############################################################################
# setup desktop
###############################################################################

sudo apt install polybar
# executable permisions to launch.sh chmod +x ~/.config/polybar/launch.sh

###############################################################################
# manual steps?
###############################################################################

# docker login
