" General
syntax on
:set hlsearch

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

