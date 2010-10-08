"set columns=80
set guifont=Consolas\ 10
set tabstop=4
set shiftwidth=4
set expandtab
set number
set smartindent
set autoindent
set incsearch
set showcmd
set textwidth=80
set wrapmargin=0

set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%F%m%r%h%w\ %{&ff}:%Y\ %v:%l/%L\ %{VCSCommandGetStatusLine()}
"set statusline=%<%f\ %{VCSCommandGetStatusLine()}\ %h%m%r%=%l,%c%V\ %P

filetype plugin indent on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2

colorscheme slate

set tags=tags;/
map <F4> :TlistToggle<cr>

" Use CSS syntax for LESS CSS files
au! BufRead,BufNewFile *.less setfiletype less

au! BufRead,BufNewFile *.json setfiletype json
au! BufRead,BufNewFile *.ru   setfiletype ruby

au! BufRead,BufNewFile *.plantuml setfiletype plantuml

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

let javaScript_fold=1
