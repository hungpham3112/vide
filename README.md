# :cactus: VIDE

## An IDE layer for VIM

## :book: Table of contents

- [Introduction](#introduction)
- [Quickstart](#quick-start)
- [Plugins](#plugins)
- [Contributing](#contributing)
- [License](#license)

## :sunglasses: Introduction

When I first started learning Vim, I had a lot of difficulty and spent a lot of
time searching the internet and referencing other people's configurations. So I
decided to create a project of my own to help those who are new to Vim,
especially on the `Windows` platform.

Currently, this project supports `Windows` and some `Ubuntu-based` distros.
In the future, it will be continue to compatible with `MacOS` and more `Linux` distro.

## :rocket: Quick-start

### Windows (Powershell 5.1+)

```powershell
Invoke-WebRequest https://raw.githubusercontent.com/hungpham3112/vide/main/bin/install.ps1 -UseBasicParsing | Invoke-Expression
```

### Linux (Ubuntu-Based)

```sh
bash <(curl -s https://raw.githubusercontent.com/hungpham3112/vide/main/bin/install.sh)
```

## :gear: Plugins

| Purpose | Plugin | Repo |
| ------ | ------ | ------ |
| Plugin manager | vim-plug | <https://github.com/junegunn/vim-plug.git> |
| Completion and many more | coc-nvim | <https://github.com/neoclide/coc.nvim.git> |
| Navigation | vim-easymotion | <https://github.com/easymotion/vim-easymotion> |
| Provide snippets | vim-snippets | <https://github.com/honza/vim-snippets> |
| File system explorer | nerd-tree |  <https://github.com/preservim/nerdtree.git> |
| Comment functions | nerd-commenter | <https://github.com/preservim/nerdcommenter.git> |
| Theme | theme  | <https://github.com/sainnhe/edge.git>|
| Vertical line like VScode| indentLine  | <https://github.com/Yggdroot/indentLine.git> |
| Floating terminal | floaterm  | <https://github.com/voldikss/vim-floaterm.git> |
| Powerful way to edit<br>brackets, parentheses, quotes | vim-surround  |  <https://github.com/tpope/vim-surround.git>|
| Insert or delete<br>brackets, parentheses, quotes | auto-pairs  |  <https://github.com/jiangmiao/auto-pairs> |
| Beautiful statusline | lightline |  <https://github.com/itchyny/lightline.vim> |
and more ...

## :star: Contributing

- Open issue and ask if you have any trouble. I will do my best to help you.
- Tell me if you have any idea to make this repository better.
- Create Pull Request
- Give me a star if you like my config

### :wrench: Uninstall VIDE

```powershell
Invoke-WebRequest https://raw.githubusercontent.com/hungpham3112/vide/main/bin/uninstall.ps1 -UseBasicParsing | Invoke-Expression
```

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
