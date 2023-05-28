" Set Encoding
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1

" Switch between buffers without saving and while retaining mark and undo history
set hidden

" Move to mark keys should be swapped
nnoremap ' `
nnoremap ` '

" Set leader character to the spacebar
let mapleader=" "

" Add the cool little dots for white space while in Insert mode
set list
set listchars=tab:·\ ,trail:·

" Get a list of files on Tab instead of autofilling the longest file
set wildmode=list:longest

" ESC'ing take fo-EVAH!
set ttimeout
set timeoutlen=600
set ttimeoutlen=50

" Indent Stuffs
set autoindent
set smartindent
autocmd FileType python setl nosmartindent

" Default Tab Stuffs
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Show info for completion candidates in a popup menu
if has("patch-8.1.1904")
  set completeopt+=popup
  set completepopup=align:menu,border:off,highlight:Pmenu
endif

" Flag trailing whitespace for Python/C files
"highlight BadWhitespace ctermbg=darkgreen guibg=darkgreen
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Tab Stuffs for Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Tab Stuffs for web dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" File Stuffs
set autoread
set autowrite
set nobackup
set nowritebackup
set noswapfile
set nowb

" Display Stuffs
set hlsearch
set showmatch
set fillchars=vert:\ ,stl:\ ,stlnc:\
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set laststatus=2
set title
set visualbell
set colorcolumn=80

" Nav Stuffs
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set bsdir=last                 " Last accessed directory is default working directory
set history=1000               " keep 50 lines of command line history
set incsearch                  " do incremental searching
set scrolloff=0                " start scrolling when cursor is 0 lines from bottom

" Paste Toggle (stops <Command>-V paste from having indentation added)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map! jk  <Esc>
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <leader>- <C-W>_
map <leader>= <C-W>=
map <leader>\ <C-W><Bar>
nmap <silent> <leader>h :silent :nohlsearch<CR>
nmap <silent> <leader>bb :silent :bp<CR>
nmap <silent> <leader>bn :silent :bn<CR>
nmap <silent> <leader>jj :%!python -m json.tool<CR>

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let python_highlight_all=1
syntax on
set background=dark
colorscheme kalisi
highlight ColorColumn ctermbg=darkgray guibg=darkgray
