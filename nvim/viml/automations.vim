function s:SetDefaultOptions ()
	setlocal shiftwidth=0 tabstop=3 noexpandtab
endfunction

augroup AuBufWritePre
	autocmd!
	autocmd BufWritePre * let current_pos = getpos(".")
	autocmd BufWritePre * silent! undojoin | %s/\s\+$//e
	autocmd BufWritePre * silent! undojoin | %s/\n\+\%$//e
	autocmd BufWritePre * call setpos(".", current_pos)
	autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
augroup END

augroup AuFileTypeBehaviour
	autocmd!
	autocmd FileType fugitive,fugitiveblame,git setlocal colorcolumn=
	autocmd FileType rust call s:SetDefaultOptions()
augroup END

augroup AuFileTypeByExtension
	autocmd!
	autocmd BufNewFile,BufRead *.cls  set filetype=plaintex
	autocmd BufNewFile,BufRead *.sty  set filetype=plaintex
	autocmd BufNewFile,BufRead *.tikz set filetype=tex
	autocmd BufNewFile,BufRead *.tpp  set filetype=cpp
augroup END

"augroup AuLint
"	autocmd!
"	autocmd BufEnter,BufNew,InsertLeave,TextChanged,VimEnter <buffer>
"		\ lua require('lint').try_lint()
"augroup END

augroup AuYank
	autocmd!
	autocmd TextYankPost *
		\ lua vim.highlight.on_yank{higroup="IncSearch", timeout=400, on_visual=true}
augroup END
