" >> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    "  Statusline plugin 
    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons

    
    "  Integrates your shell and text-editing experience
    Plug 'nikvdp/neomux'

    " Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'

    " Plug 'tpope/vim-eunuch'
    " Plug 'tpope/vim-fugitive'


    " Easy Comments gc, gcc
    " Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-commentary' 

    " File Explorer
    Plug 'scrooloose/NERDTree'


    "  Icons
    Plug 'ryanoasis/vim-devicons'

     " Themes
    " Plug 'NLKNguyen/papercolor-theme'
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


    "OneDark+
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

call plug#end()



" colorscheme  novum
" configure nvcode-color-schemes
let g:nvcode_termcolors=256
syntax on
colorscheme onedark " Or whatever colorscheme you make

" if(has("termguicolors"))
set termguicolors                     " For colors to work on Mac iTerm
syntax enable                           " Enables syntax highlighing
set colorcolumn=180

" basic settings
syntax on
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support


" set leader key to SPACE
" let g:mapleader=" "

" >> Telescope bindings
nnoremap <Leader>pp :lua require'telescope.builtin'.builtin{}<CR>

" most recentuly used files
nnoremap <Leader>m :lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; :lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <Leader>/ :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <Leader>' :lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <Leader>f :lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <Leader>bfs :lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <Leader>rg :lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <Leader>cs :lua require'telescope.builtin'.colorscheme{}<CR>


" >> setup nerdcomment key bindings
" let g:NERDCreateDefaultMappings = 0
" let g:NERDSpaceDelims = 1

" xnoremap <Leader>ci :call NERDComment('n', 'toggle')<CR>
" nnoremap <Leader>ci :call NERDComment('n', 'toggle')<CR>


" >> Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize-2<CR>
nnoremap <M-k>    :resize+2<CR>
nnoremap <M-h>    :vertical resize-2<CR>
nnoremap <M-l>    :vertical resize+2<CR>


" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" Teo maps
let mapleader = "\<Space>"
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>h ^
nnoremap <leader>l $



nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-`> :terminal<CR>


" Move lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

" MUST HAVE VIM REMAPS (JULY 2021) https://www.youtube.com/watch?v=hSHATqh8svM

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Add quotes around visual selection
vnoremap " <esc>`>a"<esc>`<i"<esc>


lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
require("completion")
EOF
