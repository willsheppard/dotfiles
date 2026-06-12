" nvim config
" put at ~/.config/nvim/init.vim

:set nowrap
:set number

:set statusline+=%f\ [%a]

" w = toggle wrap
:noremap w :set wrap!<CR>

" n = toggle numbers
:noremap n :set number!<CR>

" j/k = prev/next
:noremap j :prev<CR>
:noremap k :next<CR>

