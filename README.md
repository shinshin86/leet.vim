# leet.vim
Implements leetspeak converter at Vimscript<br>
This is created to learn Vimscript.



## Demo

![demo gif](demo/demo.gif)



## Install and Usage

### Plug Install

1. Add `.vimrc`

```vim
Plug 'shinshin86/leet.vim'
```

2. PlugInstall

   launch to vim then `:PlugInstall`

3. Let's leetspeak!

   launch to vim then `:Leet hello`



## Development

1. In terminal

```bash
git clone https://github.com/shinshin86/leet.vim.git
cd leet.vim
vim
```

2. In vim

```vim
" 1. read vim file
:source plugin/leet.vim

" 2. insert leet text
:Leet hello

" => insert text "[-]€el1p"
```