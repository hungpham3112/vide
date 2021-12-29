<<<<<<< HEAD
# VIDE
=======
# Vim-as-IDE

## Required:
LLVM: llvm for  
>>>>>>> da52e7726f412efe8d6d4132f354e88d99a75d30

## _The config for lazy people who want to learn vim faster_

<<<<<<< HEAD
## Introduction

### TODO

## Requirements

- Nerd-Fonts: Choose the font you like in [Nerd-Fonts](https://www.nerdfonts.com/)
=======
Vim version >= 8.0 : Download from source (https://www.vim.org/download.php)

If you are using MS-Windows: (https://github.com/vim/vim-win32-installer/releases). 
Find the latest Signed-Files and download (recommended)

## Installation:

Step 1: Clone repository to your home directory
>>>>>>> da52e7726f412efe8d6d4132f354e88d99a75d30

- Vim version >= 8.0 : Download from source  
  - UNIX: [https://www.vim.org/download.php](https://www.vim.org/download.php)
  - MS-Windows: [https://github.com/vim/vim-win32-installer/releases](https://github.com/vim/vim-win32-installer/releases)

<<<<<<< HEAD
    Find the latest Signed-Files and download (_recommented_)
- LLVM (optional): [llvm-project](https://github.com/llvm/llvm-project/releases/tag/llvmorg-13.0.0)

  If you work with C-family , `clangd`, `clang-formatter`,.. are really
  helpful. 

## Installation  

__Step 1__: Clone repository to your home directory

__Windows__: open terminal and run the following command

```bat
=======
```
>>>>>>> da52e7726f412efe8d6d4132f354e88d99a75d30
cd %userprofile%
rd /q /s vimfiles
git clone https://github.com/HungPham3112/vim-as-IDE.git vimfiles
```

<<<<<<< HEAD
__Step 2__: Set Nerd Fonts  

In normal mode:

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

## :star: Support Me  

- Open issue and ask if you have any trouble. I will do my best to help you.
- Add pull request.  
- <3 __Give me a star if you like my config__ <3
=======
Step 2: Set Nerd Fonts 

In normal mode:
```
:set guifont=*
```
And choose Nerd-Font you've already installed.
>>>>>>> da52e7726f412efe8d6d4132f354e88d99a75d30
