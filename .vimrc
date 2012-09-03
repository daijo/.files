" General
syntax on

set nocompatible
set modelines=0

set encoding=utf-8
set scrolloff=3
"set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Show white spaces
set list
set listchars=tab:▸\ ,eol:¬

" No cheating!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" So I can map CapsLock to F12 externally
nnoremap <F12> i
imap <F12> <Esc>

" Plain Text Wiki plugin
let potwiki_home = "~/Documents/Bliki/IndexPage.txt"
let potwiki_suffix = ".txt"
au Filetype potwiki set sts=4
highlight PotwikiWord          guifg=darkcyan
highlight PotwikiWordNotFound  guibg=Red guifg=Yellow

" Markdown folding on header
au FileType potwiki syn region myMkdHeaderFold
        \ start="\v^\s*\z(\#{1,6})"
        \ skip="\v(\n\s*\z1\#)\@="
        \ end="\v\n(\s*\#)\@="ms=s-1,me=s-1
        \ fold contains=myMkdHeaderFold

au FileType potwiki syn sync fromstart
au FileType potwiki set foldmethod=syntax

" Arduino
source ~/.vim/syntax/arduino.vim
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

