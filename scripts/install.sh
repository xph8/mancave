#! /bin/bash


###############################################################################
# core linux update
###############################################################################

sudo apt update
sudo apt upgrade --yes
sudo apt distro-update -f

###############################################################################
# setup directory structure
###############################################################################

mkdir -p ${HOME}/Primary ${HOME}/Auxilary ${HOME}/Archive

###############################################################################
# install essential packages
###############################################################################

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
chsh -s /bin/zsh

# tmux
sudo apt install tmux

# python
sudo apt install python3 python3-pip pipenv python-is-python3

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
sudo apt install ansible

# jenkins docker image setup
sudo docker

###############################################################################
# install utils
###############################################################################

sudo apt install wget curl
sudo apt install synaptic ffmpeg neofetch

###############################################################################
# clone dotfiles
###############################################################################


