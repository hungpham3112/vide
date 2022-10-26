#!/bin/bash

GREEN='\033[0;32m' # Green Color
RED='\033[0;31m' # Red Color
NC='\033[0m' # No Color
CHECK_DONE='\xE2\x9C\x94'

function remove_vim() {
    echo -e "${GREEN}UNINSTALLING VIM...${NC}"
    # install ppa-purge for remove all dependencies in ppa
    sudo apt install ppa-purge -y
    # remove the dependencies
    sudo ppa-purge jonathonf/vim
    # remove the ppa
    sudo add-apt-repository --remove ppa:jonathonf/vim -y
    # remove vim and gvim
    sudo apt remove vim vim-gtk3 ppa-purge -y
    echo -e "${GREEN}UNINSTALL VIM DONE ${CHECK_DONE}${NC}"
}

function remove_nerd_font() {
    echo -e "${GREEN}UNINSTALLING NERD-FONT...${NC}"
    sudo rm -f $HOME/.local/share/fonts/*Cousine*
    sudo fc-cache -fv
    echo -e "${GREEN}UNINSTALL NERD-FONT DONE ${CHECK_DONE}${NC}"
}

function remove_coc_extension() {
    echo -e "${GREEN}UNINSTALLING COC-EXTENSION...${NC}"
    sudo rm -rf $HOME/.config/coc
    echo -e "${GREEN}UNINSTALL COC-EXTENSION DONE ${CHECK_DONE}${NC}"
}

function remove_nodejs() {
    echo -e "${GREEN}UNINSTALLING NODEJS DONE...${NC}"
    sudo apt-get purge nodejs -y &&\
    sudo rm -rf /etc/apt/sources.list.d/nodesource.list
    echo -e "${GREEN}UNINSTALL NODEJS DONE ${CHECK_DONE}${NC}"
}

function remove_repo() {
    echo -e "${GREEN}UNINSTALLING VIDE...${NC}"
    sudo rm -rf $HOME/.vim/
    echo -e "${GREEN}UNINSTALL VIDE DONE ${CHECK_DONE}${NC}"
}

function cleaning() {
    echo -e "${GREEN}CLEANING ALL THE REDUNDANTS...${NC}"
    sudo apt clean -y && sudo apt autoremove -y
    echo -e "${GREEN}CLEANING SUCCESSFULLY ${CHECK_DONE}${NC}"
}

function goodbye_message() {
    echo -e "${GREEN}------------------------------------------------------------${NC}"
    echo -e "${GREEN}--------THANKS YOU FOR USING VIDE. SEE YOU LATER <3---------${NC}"
    echo -e "${GREEN}------------------------------------------------------------${NC}"
}

function main() {
    remove_repo
    remove_coc_extension
    remove_nodejs
    remove_nerd_font
    remove_vim
    cleaning
    goodbye_message
}

main
