syntax enable   "Allow vim color coding

set ruler       "Always show current position
set nu          "Set line numbers
set wrap        "Wrap lines
set history=700 "Set how many lines of history VIM remembers
set mouse=a     "Allow mouse scrolling inside

set cmdheight=2 "Set command line height
set showcmd     "Show command being typed
set wildmenu    "Complete for commands
set showmode    "Show mode

set incsearch   "Make search behave like browser
set ignorecase  "Ignore case when searching
set smartcase   "Be smart about casing during search
set hlsearch    "Highlight searches

set showmatch   "Show matching brackets
set mat=2       "How many tenths of a second for matching blink

"set smarttab   "Deprecated
set autoindent
filetype plugin indent on
set expandtab       "Expand tab to spaces
set shiftwidth=4    "Set how many spaces tab takes
set tabstop=4       "Tab stop increments
set softtabstop=4

set ai "Auto indent
set si "Smart indent

set so=7
set backspace=eol,start,indent "Allow backspacce to transend lines
set whichwrap+=<,>,h,l

set t_Co=256
colorscheme molokai
au BufReadPost *.ejs set syntax=html "Force HTML syntax on .ejs files

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set visualbell
nnoremap <F9> :update<CR>:! python3 %<CR>
inoremap <F9> <ESC>:update<CR>:! python3 %<CR>
