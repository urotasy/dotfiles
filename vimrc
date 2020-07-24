" File encoding setting
set encoding=utf-8      " The character encoding used inside Vim
set fileencoding=utf-8  " The character encoding for the file of this buffer
scriptencoding utf-8    " Specify the character encoding used in the script

" Sound
set belloff=all

" Backspace
set backspace=2 " Allow backspace to delete indent, eol and start place of insert

" Color setting
set background=dark
if filereadable(expand('~/.vim/colors/PaperColor.vim'))
    colorscheme PaperColor
else
    colorscheme pablo
endif
"set t_ut=
syntax on

" Appearance setting
set number      " Show line number
set cursorline  " Emphasize current line
set showmatch   " Emphasize correspond parenthesis
set nowrap      " Don't wrap line

" Search setting
set hlsearch    " Highlight search result
set incsearch   " Incremental search
set ignorecase  " Case insensitive search
set smartcase   " Case sensitive when using capital letters

" Scroll setting
set scrolloff=2     " Number of lines from horizontal edge of window
set sidescrolloff=4 " Number of column from vertical edge of window

" Status line setting
set laststatus=2    " Always show status line
set showcmd         " Show current command
set statusline=\ %f\ %m%<\ %r\ %h%=\ \|\ LINE\ =\ %l/%L\ \|\ COL\ =\ %c\ \|\ ENC\ =\ %{&fenc!=''?&fenc:&enc}\ \|\ 

" Tab setting
set expandtab       " Replace tab to space
set tabstop=4       " Show tab character with this width
set softtabstop=4   " The width of inputted tab
set shiftwidth=4    " The width of auto inserted tab
set shiftround      " round indent to multiple of shiftwidth
set autoindent      " Autoindent: keep indent as deep as previous line
set smartindent     " Smartindent: deeper indent after the line with '{' end

" Invisible character setting
set list
set listchars=tab:>-,trail:~,nbsp:$
highlight ExtraWhitespace ctermfg=red ctermbg=red guifg=red guibg=red
match ExtraWhiteSpace / \+$/

" File name completion in commandline mode
set wildmenu
set wildmode=longest:full
set suffixes=.bak,~,.swp,       " Specify lower priority extention
set wildignore=~,*.o,*.do,*.swp " Ignore these extention

" Split window
set splitbelow
set splitright

" Moving in normal mode
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk

" Normal mode commands
nnoremap _s :%s//gc<Left><Left><Left>

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
inoremap `<tab> ``<Left>
inoremap /*<tab> /*  */<Left><Left><Left>

" Setting of each programming language
if has("autocmd")
  " For C/C++ programs
  augroup cprog
    autocmd!
    autocmd FileType c,cpp setlocal formatoptions=tcroqn2vl
    autocmd FileType c,cpp setlocal cindent
  augroup END

  " For Ruby programs
  augroup rubyprog
    autocmd!
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
  augroup END

  " For Vim script
  augroup vimscript
    autocmd!
    autocmd FileType vim setlocal tabstop=2
    autocmd FileType vim setlocal softtabstop=2
    autocmd FileType vim setlocal shiftwidth=2
  augroup END
endif " has("autocmd")

" Enable plugin
if ( v:version >= 801 )
    packadd termdebug
    let g:termdebug_wide = 1
endif
