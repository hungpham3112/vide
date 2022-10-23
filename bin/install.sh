#!/bin/bash

function update_system () {
    sudo apt upgrade -y && sudo apt update -y
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
    sudo apt install python3
}

function install_vim () {
    sudo add-apt-repository -P jonathonf/vim -y
    sudo apt install vim
}

function install_nodejs () {
    curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
    sudo apt-get install -y nodejs
}

function install_nerd_font () {
    font="Cousine"
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/${zip_file}"
    fonts_dir="${HOME}/.local/share/fonts"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip -o "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
}


function clone_repo () {
    DIRECTORY="~./vim"
    if [ ! -d "$DIRECTORY" ]; then
      git clone https://github.com/hungpham3112/vide.git ~/.vim 2> /dev/null
    fi
}

main () {
    print_logo
    update_system
    install_nodejs
    install_python3
    install_vim
    install_nerd_font
    clone_repo
}

main
