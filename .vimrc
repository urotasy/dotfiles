" File encoding setting
set encoding=utf-8 " The character encoding used inside Vim
set fileencoding=utf-8 " The character encoding for the file of this buffer
scriptencoding utf-8 " Specify the character encoding used in the script

" Color setting
set background=dark
colorscheme PaperColor
syntax on

" Basic setting
set number " Show line number
set cursorline " Emphasize current line
set showmatch " Show correspond parenthesis
set hlsearch " Highlight search result

" Status line setting
set laststatus=2 " Always show status line
set statusline=\ %f\ %m%<\ %r\ %h%=\ \|\ LINE\ =\ %l/%L\ \|\ COL\ =\ %c\ \|\ ENC\ =\ %{&fenc!=''?&fenc:&enc}\ \|\ 

" Tab setting
set expandtab " Replace tab to space
set tabstop=4 " Show tab character with this width
set softtabstop=4 " The width of inputted tab
set shiftwidth=4 " The width of auto inserted tab
set cindent " Auto indent for C language

" Invisible character setting
set list
set listchars=trail:~,nbsp:$
highlight ExtraWhitespace ctermfg=red ctermbg=red guifg=red guibg=red
match ExtraWhiteSpace / \+$/

" File name completion in commandline mode
set wildmenu
set wildmode=longest:full

" Complement parenthesis and quotation
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap {<tab> {}<Left>
inoremap [<tab> []<Left>
inoremap (<tab> ()<Left>
inoremap <<tab> <><Left>
inoremap "<tab> ""<Left>
inoremap '<tab> ''<Left>
inoremap /*<tab> /*  */<Left><Left><Left>
