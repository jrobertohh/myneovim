print('Welcome, omegablue!')
local opt = vim.opt
-- ====== Basics ======
opt.autoindent = true -- start new lines correctly indented
opt.encoding=utf-8 -- codification
opt.colorcolumn=81
opt.completeopt=menuone,noselect -- Completion engine options
opt.fixeol -- Restore EOL at EOF if missing when writing
opt.foldmethod=marker -- Only allow foldings with triple brackets
opt.guicursor=a:block -- Force cursor to be a block at all times
opt.hidden -- Hide inactive buffers instead of deleting them
opt.hlsearch -- Highlight all search matches
opt.inccommand=split -- Incrementally show effects of commands, opens split
opt.incsearch -- Highlight search matches while writing (with hlsearch)
opt.linebreak -- Respect WORDS when wrap-breaking lines (see wrap)
opt.mouse=a -- enable mouse
opt.noexpandtab -- Do not expand tabs to spaces (see softtabstop)
opt.number = true  -- code line numberi
opt.relativenumber = true -- Show numbers relative to cursor position (see number)
opt.scrolloff=5 -- Leave 5 lines above and below cursor
opt.shiftwidth=0 Force indent spaces to equal to tabstop (see tabstop)
opt.shortmess+=c -- Avoid blocking 'Pattern not found' messages
opt.showcmd -- show the keys pressed in normal mode until action is run
opt.showmatch -- init/end [ { () } ]
opt.smartindent -- Ident new lines in a smart way (see autoindent)
opt.smarttab -- Treat spaces as tabs in increments of shiftwidth
opt.softtabstop=0 -- Do not insert spaces when pressing tab (see see shiftwidth)
opt.splitbelow -- Open splits bellow the current window
opt.splitright -- Open splits right of the current window
opt.tabstop=3 -- Number of columns to move when pressing <TAB> (seee noexpandtab)
opt.termguicolors -- Enable 24-bit RGB color in the TUI
opt.timeoutlen=500 -- Milliseconds to Wait before completing a mapped sequence
opt.updatetime=500 -- Milliseconds to wait before writing to swap file
opt.wrap -- Continue on the next line if insufficient columns


opt.fillchars=fold:\ | set foldtext=CustomFold() -- Minimalistic folding
opt.listchars=tab:\|\ ,trail:. list -- Alternative tab: >>
opt.syntax = enable
