# VIDE :mortar_board: 

## _The config for lazy people who want to learn vim faster_

## Introduction

VIDE is abbreviation of vim as IDE

## Requirements

- Nerd-Fonts: Choose the font you like in [Nerd-Fonts](https://www.nerdfonts.com/)

- Vim version >= 8.0 : Download from source  
  - UNIX: [https://www.vim.org/download.php](https://www.vim.org/download.php)
  - MS-Windows: [https://github.com/vim/vim-win32-installer/releases](https://github.com/vim/vim-win32-installer/releases)

    Find the latest Signed-Files and download (_recommented_)
  - [LLVM](https://github.com/llvm/llvm-project/releases/tag/llvmorg-13.0.0) (optional):
  If you work with C-family , `clangd`, `clang-formatter`,.. are really
  helpful.  
- [MSYS2](https://www.msys2.org/) (optional): Collection of tools and libraries 
for Windows

## Installation  

__Step__ _:one:_ : Clone repository to your home directory

__Windows__: open terminal and run the following command

```bat
cd %userprofile%
rd /q /s vimfiles
git clone https://github.com/HungPham3112/vim-as-IDE.git vimfiles
```

__Step__ _:two:_ : Set Nerd Fonts  

- In normal mode:

```sh
:PlugInstall
```
- Restart vim

__Step__ _:three:_ : Set Nerd Fonts  

- In normal mode:

```bat
:set guifont=*
```

And choose Nerd-Font you've already installed.

```bat
:set guifont?
```

To know current font.


## Plugins  

| Purpose | Plugin | Repo |
| ------ | ------ | ------ |
| Plugin manager | vim-plug | <https://github.com/junegunn/vim-plug.git> |
| Completion and many more | coc-nvim | <https://github.com/neoclide/coc.nvim.git> |
| Navigation | vim-easymotion | <https://github.com/easymotion/vim-easymotion><br><https://github.com/dracula/vim> |
| Provide snippets | vim-snippets | <https://github.com/honza/vim-snippets> |
| File system explorer | nerd-tree |  <https://github.com/preservim/nerdtree.git> |
| Comment functions | nerd-commenter | <https://github.com/preservim/nerdcommenter.git> |
| Theme | theme  | <https://github.com/dracula/vim><br> <https://github.com/morhetz/gruvbox.git><br> <https://github.com/tomasr/molokai.git><br> <https://github.com/rakr/vim-one.git><br> <https://github.com/altercation/vim-colors-solarized.git><br> <https://github.com/sainnhe/edge.git><br> |
| Vertical line like VScode| indentLine  | <https://github.com/Yggdroot/indentLine.git> |
| Floating terminal | floaterm  | <https://github.com/voldikss/vim-floaterm.git><br><https://github.com/voldikss/fzf-floaterm.git>|
| Tool-kit for web developers | emmet  |   <https://github.com/mattn/emmet-vim.git> |
| Powerful way to edit<br>brackets, parentheses, quotes | vim-surround  |  <https://github.com/tpope/vim-surround.git>|
| Insert or delete<br>brackets, parentheses, quotes | auto-pairs  |  <https://github.com/jiangmiao/auto-pairs> |
| Beautiful statusline | lightline |  <https://github.com/itchyny/lightline.vim> |
and more ...

## :star: Support Me :star:   

- Open issue and ask if you have any trouble. I will do my best to help you.
- Tell me if you have any idea to make this repository better.
- Add pull request.  
- :heart: __Give me a star if you like my config__ :heart:
