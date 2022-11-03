#!/bin/bash

function install_oh_my_zsh() {
    sudo apt update -y
    sudo apt install zsh -y
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    sudo apt install fonts-powerline -y
}

function install_terminator() {
    sudo apt install terminator -y
}

function install_vscode() {
    sudo apt update && sudo apt upgrade -y
    sudo apt install software-properties-common apt-transport-https wget -y
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
    sudo apt install code -y
}

function install_docker() {
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
}

function install_docker_compose() {
    sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}

function install_snap() {
  sudo apt update
  sudo apt install snapd -y
}

function install_postman() {
  sudo snap install postman -y
}

function install_telegram() {
  sudo snap install telegram-desktop -y
}

function install_vlc() {
  sudo snap install vlc -y
}

function install_spotify() {
  sudo snap install spotify -y
}

function install_brave() {
  sudo apt install apt-transport-https curl -y
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update
  sudo apt install brave-browser -y
}

function get_IDE_datagrip() {
    if [ ! -d "${HOME}/.jetbrains" ]; then
        sudo mkdir ${HOME}/.jetbrains
    fi
    sudo curl -fsSL ${HOME}/.jetbrains/jetbrains-datagrip.tar.gz https://download.jetbrains.com/datagrip/datagrip-2022.2.5.tar.gz?_gl=1*r0ewi2*_ga*MjMyNjYyOTQwLjE2NjczODA3Mzc.*_ga_9J976DJZ68*MTY2NzQxODk4MC4zLjEuMTY2NzQxOTc2Ni41NC4wLjA.
    tar -xvf ${HOME}/.jetbrains/jetbrains-datagrip.tar.gz -C ${HOME}/.jetbrains/
}

function get_IDE_phpstorm() {
    if [ ! -d "${HOME}/.jetbrains" ]; then
        sudo mkdir ${HOME}/.jetbrains
    fi
    sudo curl -fsSLo ${HOME}/.jetbrains/jetbrains-phpstorm.tar.gz https://download.jetbrains.com/webide/PhpStorm-2022.2.3.tar.gz?_gl=1*5l7uhk*_ga*MjMyNjYyOTQwLjE2NjczODA3Mzc.*_ga_9J976DJZ68*MTY2NzQ3MzgxNS41LjEuMTY2NzQ3MzgxNS42MC4wLjA.
    tar -xvf ${HOME}/.jetbrains/jetbrains-phpstorm.tar.gz -C ${HOME}/.jetbrains/
}

function get_IDE_goland() {
    if [ ! -d "${HOME}/.jetbrains" ]; then
        sudo mkdir ${HOME}/.jetbrains
    fi
    sudo curl -fsSLo ${HOME}/.jetbrains/jetbrains-goland.tar.gz https://download.jetbrains.com/go/goland-2022.2.4.tar.gz?_gl=1*1ffn362*_ga*MjMyNjYyOTQwLjE2NjczODA3Mzc.*_ga_9J976DJZ68*MTY2NzQ3MzgxNS41LjEuMTY2NzQ3Mzk1OC4zOS4wLjA.
    tar -xvf ${HOME}/.jetbrains/jetbrains-goland.tar.gz -C ${HOME}/.jetbrains/
}

function get_IDE_pycharm() {
    if [ ! -d "${HOME}/.jetbrains" ]; then
        sudo mkdir ${HOME}/.jetbrains
    fi
    sudo curl -fsSLo ${HOME}/.jetbrains/jetbrains-pycharm.tar.gz https://download.jetbrains.com/python/pycharm-professional-2022.2.3.tar.gz?_gl=1*i2bom4*_ga*MjMyNjYyOTQwLjE2NjczODA3Mzc.*_ga_9J976DJZ68*MTY2NzQ3MzgxNS41LjEuMTY2NzQ3Mzk5OC41OS4wLjA.
    tar -xvf ${HOME}/.jetbrains/jetbrains-pycharm.tar.gz -C ${HOME}/.jetbrains/
}

function get_IDE() {
    if [ ! -d "${HOME}/.jetbrains" ]; then
        sudo mkdir ${HOME}/.jetbrains
    fi
    get_IDE_datagrip
    get_IDE_phpstorm
    get_IDE_goland
    get_IDE_pycharm
}

install_oh_my_zsh
install_terminator
install_vscode
install_docker
install_docker_compose
install_snap
install_postman
install_telegram
install_vlc
install_spotify
install_brave
get_IDE
