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

set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%F%m%r%h%w\ %{&ff}:%Y\ %v:%l/%L\ %{VCSCommandGetStatusLine()}
"set statusline=%<%f\ %{VCSCommandGetStatusLine()}\ %h%m%r%=%l,%c%V\ %P

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
filetype indent on

colorscheme slate

function! SetupEnvironment()
    if &filetype == 'yaml'
        setlocal tabstop=2 shiftwidth=2
    endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

" Use CSS syntax for LESS CSS files
au BufRead,BufNewFile *.less setfiletype css

set tags=tags;/
map <F4> :TlistToggle<cr>

au! BufRead,BufNewFile *.json setfiletype json
au! BufRead,BufNewFile *.ru   setfiletype ruby
