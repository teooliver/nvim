" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'


    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'pangloss/vim-javascript'
    Plug 'itchyny/vim-gitbranch'
    "  Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

     " Closetags
    Plug 'alvan/vim-closetag'

    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'

    "Barbar - tabline plugin
    " Plug 'romgrk/barbar.nvim'
    " Plug 'kyazdani42/nvim-web-devicons'

call plug#end()