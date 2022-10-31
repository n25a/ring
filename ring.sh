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