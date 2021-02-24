" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'pangloss/vim-javascript'
    Plug 'arzg/vim-substrata'
    Plug 'dylnmc/novum.vim'
    Plug 'flrnd/candid.vim'
    Plug 'wadackel/vim-dogrun'
    Plug 'zefei/simple-dark'
    Plug 'dikiaap/minimalist'
    " Plug 'junk-e/identity.vim '

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Pair Colorizer  
    " Plug 'something'

    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    
     " Auto close tags
    Plug 'alvan/vim-closetag'

    " Easy Comments gc, gcc
    Plug 'tpope/vim-commentary' 

    "  Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " add coc extensions
    "['coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint']
    
    " Typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'ianks/vim-tsx'

    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Git integration
    " Plug 'itchyny/vim-gitbranch'

    "Barbar - tabline plugin
    " Plug 'romgrk/barbar.nvim'
    " Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx