" Base
set nocompatible
syntax on
filetype plugin indent on

:set list lcs=tab:\┆\ 

" Keybinds
" shift movement keys
noremap ; l
noremap l j
noremap j h

" set leader
let mapleader = ","
let g:mapleader = ","

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

nmap <leader>w :w!<cr>
map <space> /
map <C-space> ?

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Colors
colorscheme wal                       " Set pywal colors

" interface
set noshowmode                        " don't show mode
set number                            " show line numbers
set ruler                             " show current position at bottom
set scrolloff=5                       " keep at least 5 lines above/below
set shortmess+=aAIsT                  " disable welcome screen and other messages
set showcmd                           " show any commands
set sidescroll=1                      " smoother horizontal scrolling
set sidescrolloff=5                   " keep at least 5 lines left/right
set splitbelow                        " create new splits below
set splitright                        " create new splits to the right
set wildmenu                          " enable wildmenu
set wildmode=longest:full,full        " configure wildmenu
set nohidden                          " close buffers instead of hiding them
set foldcolumn=1

" whitespace
set expandtab                         " use spaces
set nojoinspaces                      " use one space, not two, after punctuation
set shiftround                        " shift to next tabstop
set shiftwidth=2                      " amount of space used for indentation
set softtabstop=2                     " appearance of tabs
set tabstop=2                         " use two spaces for tabs

" folding
set nofoldenable                      " disable folds

" text appearance
set synmaxcol=200                     " stop syntax highlighting after 200 columns
set nowrap                            " disable line wrapping

" interaction
set backspace=2                       " make backspace work like most other apps
set mouse=a                           " enable mouse support
set mousehide                         " hide the mouse cursor while typing
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too

" searching
set hlsearch                          " highlight search matches
set ignorecase                        " set case insensitive searching
set incsearch                         " find as you type search
set smartcase                         " case sensitive searching when not all lowercase

" background processes
set autoread                          " update file when changed outside of vim
set autoindent                        " copy indentation from the previous line for new line
set clipboard=unnamed                 " use native clipboard
set history=200                       " store last 200 commands as history
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles
set nowritebackup                     " don't save a backup while editing
set ttyfast                           " indicates a fast terminal connection

" character encoding
if !&readonly && &modifiable
  set fileencoding=utf-8              " the encoding written to file
endif
set encoding=utf-8                    " the encoding displayed

" Lightline
set laststatus=2

" ==================================================================================================
" Plugins

" plug vim package manager
call plug#begin('~/.vim/plugged')

" global syntax highlighting
Plug 'sheerun/vim-polyglot'

" interface
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'yegappan/mru'
Plug 'yggdroot/indentline'

call plug#end()

" Plugin settings
if has_key(g:plugs, 'lightline.vim')
    let g:lightline = {
        \ 'colorscheme': 'seoul256',
        \ }
endif

if has_key(g:plugs, 'mru')
    nmap <leader>mr :MRU<cr>
endif

if has_key(g:plugs, 'nerdtree')
  let NERDTreeMapActivateNode='l'
  let NERDTreeMapCloseDir='h'
  let NERDTreeMinimalUI = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeCascadeSingleChildDir = 0
  let NERDTreeShowHidden = 1
  nnoremap <leader>n :NERDTreeToggle<CR>
endif
