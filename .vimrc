" General
syntax on

" Plain Text Wiki plugin
let potwiki_home = "~/Documents/Wiki/IndexPage.txt"
let potwiki_suffix = ".txt"
au Filetype potwiki set sts=4
highlight PotwikiWord          guifg=darkcyan
highlight PotwikiWordNotFound  guibg=Red guifg=Yellow
