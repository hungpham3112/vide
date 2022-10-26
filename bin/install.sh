#!/bin/bash

GREEN='\033[0;32m' # Green Color
RED='\033[0;31m' # Red Color
NC='\033[0m' # No Color
CHECK_DONE='\xE2\x9C\x94'

function update_system () {
    echo -e "${GREEN}UPDATING SYSTEM...${NC}"
    sudo apt upgrade -y && sudo apt update -y
    echo -e "${GREEN}SUCCESSFULLY UPDATE SYSTEM ${CHECK_DONE}${NC}"
}

function print_logo () {
    cat << 'EOF'

           $$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\
           $$ |   $$ |\_$$  _|$$  __$$\ $$  _____|
           $$ |   $$ |  $$ |  $$ |  $$ |$$ |
           \$$\  $$  |  $$ |  $$ |  $$ |$$$$$\
            \$$\$$  /   $$ |  $$ |  $$ |$$  __|
             \$$$  /    $$ |  $$ |  $$ |$$ |
              \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\
               \_/    \______|\_______/ \________|

EOF
}

function install_python3 () {
    echo -e "${GREEN}INSTALLING PYTHON3...${NC}"
    sudo apt install python3 -y
    echo -e "${GREEN}INSTALL PYTHON3 DONE ${CHECK_DONE}${NC}"
}

function install_vim () {
    echo -e "${GREEN}INSTALLING VIM...${NC}"
    sudo add-apt-repository -P jonathonf/vim -y
    sudo apt install vim vim-gtk3 -y
    echo -e "${GREEN}INSTALL VIM DONE ${CHECK_DONE}${NC}"
}

function install_nodejs () {
    echo -e "${GREEN}INSTALLING NODEJS...${NC}"
    curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
    sudo apt-get install nodejs -y
    echo -e "${GREEN}INSTALL NODEJS DONE ${CHECK_DONE}${NC}"
}

function install_nerd_font () {
    echo -e "${GREEN}INSTALLING NERD-FONT...${NC}"
    font="Cousine"
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/${zip_file}"
    fonts_dir="${HOME}/.local/share/fonts"
    echo -e "Downloading $download_url"
    sudo wget "$download_url"
    sudo unzip -o "$zip_file" -d "$fonts_dir"
    rm -rf "$zip_file"
    sudo fc-cache -fv
    echo -e "${GREEN}INSTALL NERD-FONT DONE ${CHECK_DONE}${NC}"
}

function clone_repo () {
    echo -e "${GREEN}CLONING REPO...${NC}"
    DIRECTORY="$HOME/.vim"
    if [ ! -d "$DIRECTORY" ]; then
        git clone https://github.com/hungpham3112/vide.git ~/.vim
    else
        cd $HOME && rm $HOME/.vim -rf
        git clone https://github.com/hungpham3112/vide.git ~/.vim
    fi
    echo -e "${GREEN}CLONE REPO DONE ${CHECK_DONE}${NC}"
}

function run_vide () {
    gvim
}

function successful_message() {
    echo -e "${GREEN}------------------------------------------------------------${NC}"
    echo -e "${GREEN}-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY <3-----${NC}"
    echo -e "${GREEN}------------------------------------------------------------${NC}"
}

function main () {
    print_logo
    update_system
    install_nodejs
    install_python3
    install_vim
    install_nerd_font
    clone_repo
    run_vide
    successful_message
}

main
