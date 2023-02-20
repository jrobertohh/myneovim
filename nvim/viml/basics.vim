" ====== Basics ======
set autoindent " start new lines correctly indented
set encoding=utf-8 " codification
set colorcolumn=81
set completeopt=menuone,noselect " Completion engine options
set fixeol " Restore EOL at EOF if missing when writing
set foldmethod=marker " Only allow foldings with triple brackets
set guicursor=a:block " Force cursor to be a block at all times
set hidden " Hide inactive buffers instead of deleting them
set hlsearch " Highlight all search matches
set inccommand=split " Incrementally show effects of commands, opens split
set incsearch " Highlight search matches while writing (with hlsearch)
set linebreak " Respect WORDS when wrap-breaking lines (see wrap)
set mouse=a " enable mouse
set noexpandtab "x Do not expand tabs to spaces (see softtabstop)
set number  " code line numberi
set relativenumber " Show numbers relative to cursor position (see number)
set scrolloff=5 " Leave 5 lines above and below cursor
set shiftwidth=0 "x Force indent spaces to equal to tabstop (see tabstop)
set shortmess+=c " Avoid blocking 'Pattern not found' messages
set showcmd " show the keys pressed in normal mode until action is run
set showmatch " init/end [ { () } ]
set smartindent "x Ident new lines in a smart way (see autoindent)
set smarttab "x Treat spaces as tabs in increments of shiftwidth
set softtabstop=0 "x Do not insert spaces when pressing tab (see see shiftwidth)
set splitbelow " Open splits bellow the current window
set splitright " Open splits right of the current window
set t_Co=256
set tabstop=3 " Number of columns to move when pressing <TAB> (seee noexpandtab)
set termguicolors " Enable 24-bit RGB color in the TUI
set timeoutlen=500 " Milliseconds to Wait before completing a mapped sequence
set updatetime=500 " Milliseconds to wait before writing to swap file
set wrap " Continue on the next line if insufficient columns


set fillchars=fold:\ | set foldtext=CustomFold() " Minimalistic folding
set listchars=tab:\|\ ,trail:. list " Alternative tab: >>
syntax enable
