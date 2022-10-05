# :mortar_board: VIDE 

## _The config for lazy people who want to learn Vim faster_

## Table of contents

- [Introduction](#introduction)
- [Quickstart](#quick-start)
- [Plugins](#plugins)
- [Contributing](#contributing)
- [License](#license)

## Introduction

When I first started learning Vim, I had a lot of difficulty and spent a lot of
time searching the internet and referencing other people's configurations. So I
decided to create a project of my own to help those who are new to Vim,
especially on the `Windows` platform.

Currently, this project supports `Windows`. In the future, I will continue to
learn and make it compatible with `MacOS` and `Linux` distro.

## Quick-start

__One-line installer__:

### Windows

```powershell
Invoke-WebRequest https://raw.githubusercontent.com/hungpham3112/vide/main/bin/install.ps1 -UseBasicParsing | Invoke-Expression
```

### Linux (Ubuntu-Based)

```sh
bash <(curl -s https://github.com/hungpham3112/vide/bin/install.sh)
```

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

## :star: Contributing

- Open issue and ask if you have any trouble. I will do my best to help you.
- Tell me if you have any idea to make this repository better.
- Add pull request.
- :heart: __Give me a star if you like my config__ :heart:

## License

The MIT License (MIT)

Copyright(c) by hungpham3112
