" ====== Plug ins ======
call plug#begin('~/.vim/plugged')

Plug 'alvan/vim-closetag' " close labels
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }
Plug 'dense-analysis/ale' "Python
Plug 'jiangmiao/auto-pairs' " Open and close: { ... }; [...]; ...
Plug 'junegunn/gv.vim' " <8>
Plug 'mattn/emmet-vim' " <4> HTML labels
Plug 'maxmellon/vim-jsx-pretty' " javascript syntax II
Plug 'mhinz/vim-signify' " <8>
Plug 'mhinz/vim-startify',{'branch':'center'} " <10> Start screen
Plug 'mlaursen/vim-react-snippets' " <3>
" <3> Conquer of Completion is an intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'neovim/nvim-lspconfig' "    <2> LSP: typescript-language-server
"Plug 'norcalli/nvim-colorizer.lua' " <9> Adding color with colorizer & rainbow
Plug 'neovimhaskell/haskell-vim' "<11> Haskell"
Plug 'nvie/vim-flake8' "Style guides: Python
Plug 'nvim-lua/completion-nvim' " <2> Autocompleted
Plug 'pangloss/vim-javascript' " javascript syntax I
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'sainnhe/gruvbox-material' " <1> visual theme gruvboxi
Plug 'scrooloose/nerdtree' " <6> Show the files tree
Plug 'SirVer/ultisnips' " <3> A collection of common Javascript and Typescript vim snippets for developing React applications.
Plug 'tpope/vim-fugitive' " <8> Git commands
Plug 'tpope/vim-rhubarb' " <8>
Plug 'vim-airline/vim-airline' " <5> state bar with style
Plug 'vim-airline/vim-airline-themes' " <5>
Plug 'Yggdroot/indentLine' " displaying thin vertical lines at each indentation level for code indented with spaces.
" <7> Telescope
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"call dein#add('glepnir/dashboard-nvim')

call plug#end()


" ====== CONFIGURATION ======
" ====== <1> Gruvbox configuration ======
set background=dark
let g:gruvbox_material_background='hard'
"let g:sonokai_background='hard'
colorscheme gruvbox-material
"colorscheme gruvbox-sonokai
" ====== <3> Snippets configuration
let g:UtilSnipsExpandTrigger="<tab>"
" ====== <4> HTML ======
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
\ 'javascript':{
\ 'extends':'jsx'
\}
\}
" ====== <5> Airline configuration ======
let g:airline_theme= 'ayu_mirage' " 'onedark'
let g:airline#extensions#tabline#enabled = 1
" ====== <6> NerdTree ======
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
" ====== <7> Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" ====== Prettier configuration ======
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"nnoremap <C-D> :Prettier<CR>
" ====== <8> Git integration ======
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk
" ====== <9> Colorized ======
"require'colorizer'.setup(
"  {'*';},
"  {
"    RGB      = true;         -- #RGB hex codes
"	  RRGGBB   = true;         -- #RRGGBB hex codes
"	  names    = true;         -- "Name" codes like Blue
"	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
"	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
"	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
"	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
"	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
"  })
" ====== <10> Start screen ======
" let g:startify_custom_header =
"       \ startify#pad(split(system('figlet -w 100 OMEGABLUE'), '\n'))
"let g:startify_custom_header = [
let g:ascii = [
\'█████████████████████████████████████████████████████████████',
\'█                                                           █',
\'█               ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣴⣦⣤⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀             █',
\'█               ⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀             █',
\'█               ⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀  ⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀⠀            █',
\'█               ⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀             ⠈⠻⣿⣿⣦⠀⠀⠀            █',
\'█               ⠀⠀⣼⣿⣿⠋⠀⠀  ⠈⢻⣿⣇ ⢻⣿⣇     ⠀  ⠙⣿⣿⣧⠀⠀            █',
\'█               ⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀  ⢻⣿⣇ ⢻⣿⣇⠀⠀ ⠀⠀   ⠸⣿⣿⡇⠀            █',
\'█               ⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀  ⠀⢻⣿⣇ ⢻⣿⣇⠈⢻⣿⣿⣿⣿  ⣿⣿⣿⠀            █',
\'█               ⠀⣿⣿⡇⠀⠀⠀⠀  ⠀   ⣿⣿⡀ ⣿⣿⣇  ⣀⣀⣀  ⣹⣿⣿⠀            █',
\'█               ⠀⣿⣿⣷⠀⠀⠀⠀  ⠀⠀⣴⣿⡿⠋ ⣰⣿⣿⣿⣇ ⠙⣿⣿  ⣿⣿⡿⠀            █',
\'█               ⠀⢸⣿⣿⡆⠀⠀  ⠀⣴⣿⡿⠃ ⣴⣿⡿⠃⠈⢿⣿⣇⠀⠀  ⣰⣿⣿⠇⠀            █',
\'█               ⠀⠀⢻⣿⣿⣄  ⣴⣿⡿⠃ ⣴⣿⡿⠃⠀   ⢻⣿⣇  ⣰⣿⣿⡟⠀⠀            █',
\'█⠀               ⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀ ⠀⠀⣠⣾⣿⣿⠏⠀⠀⠀            █',
\'█⠀⠀⠀               ⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀ ⠀ ⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀             █',
\'█⠀⠀⠀                ⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣶⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀              █',
\'█⠀⠀⠀⠀               ⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀              █',
\'█                                                           █',
\'█  ██╗  ██╗ █████╗ ███████╗██╗  ██╗███████╗██╗     ██╗      █',
\'█  ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██║     ██║      █',
\'█  ███████║███████║███████╗█████╔╝ █████╗  ██║     ██║      █',
\'█  ██╔══██║██╔══██║╚════██║██╔═██╗ ██╔══╝  ██║     ██║      █',
\'█  ██║  ██║██║  ██║███████║██║  ██╗███████╗███████╗███████╗ █',
\'█  ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ █',
\'█  A    N    D          P     L      U      T      U      S █',
\'█                                                           █',
\'█                b y   o m e g a b l u e                    █',
\'█████████████████████████████████████████████████████████████',
\]

"     \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
"     \'⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀ ',
"     \'⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀⠀ ',
"     \'⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀⠀ ',
"     \'⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀ ',
"     \'⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀ ',
"     \'⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀ ',
"     \'⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⠀ ',
"     \'⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿⠀ ',
"     \'⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇⠀ ',
"     \'⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀⠀ ',
"     \'⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀⠀ ',
"     \'⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀⠀ ',
"     \'⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀ ',
"     \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
"     \]
"let g:startify_custom_header = startify#center(g:ascii)
let g:startify_custom_header = g:ascii

"let g:startify_lists = [
"    \ { 'type': 'dir',       'header': startify#center(['MRU '.getcwd()]) },
"    \ { 'type': 'sessions',  'header': startify#center(['Sessions']) },
"    \ { 'type': 'files',     'header': startify#center(['MRU']) },
"    \ { 'type': 'bookmarks', 'header': startify#center(['Bookmarks']) },
"    \ { 'type': 'commands',  'header': startify#center(['Commands']) },
"    \ ]
"let g:startify_padding_left = 68 " Hard coded padding for lists
" ====== <11> Haskell ======
autocmd FileType haskell autocmd BufWritePre <buffer> call CocAction('format')
let g:haskell_indent_disable=1
" ====== <2> LSP configuration ======
lua << EOF
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF

" ====== <3> COC Configuration =====
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
