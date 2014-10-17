" ********************** Will's config **********************

" Syncronise syntax highlighting properly
" See also http://vim.wikia.com/wiki/Fix_syntax_highlighting
:syntax on
autocmd BufEnter * :syntax sync fromstart

" Less bright colours
:set background=light
" Make comments bright though ("syntax on" command must come before this)
:highlight Comment ctermfg=Green

" Make highlighted searches easier to read,
" Default white text on yellow background is invisible.
" Change to purple background.
":highlight Search guibg=Purple guifg=NONE
:highlight Search cterm=NONE ctermfg=grey ctermbg=blue

" EXAMPLE of mapping a keypress to a sequence of other keypresses
" map CTRL-E to end-of-line (while in insert mode)
imap <F8> :prev<CR>
imap <F9> :next<CR>

" jump to last edited position if possible
autocmd BufRead *,.* :normal '"

" Don't auto-indent when pasting, that really messes it up
set pastetoggle=<F2>

" Don't underline line numbers (how did they get underlined in the first place?!)
:hi LineNr term=NONE

" Show a line at column 80 (Vim 7.3 and above)
":set colorcolumn=80

" Visually show long lines (for Vim before 7.3)
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
" Type \H to toggle
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

" ********************** Joao's config **********************

"set bg=dark

" http://nvie.com/posts/how-i-boosted-my-vim/

set nocompatible

filetype plugin indent on "indenting intelligence is enabled based on the syntax rules for the file type

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden      "hide buffers instead of closing them

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting (doesn't work with 6.1)
set number      " show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
"set incsearch     " show search matches as you type

set expandtab
autocmd FileType perl set smartindent

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup

" colorscheme mustang

"set list " visible punctuation, including $ for every line ending
"set listchars=tab:>.,trail:.,extends:#,nbsp:. " (doesn't work with 6.1)
autocmd filetype html,xml set listchars-=tab:>.

set incsearch   " show search matches as you type

" map ,/ to no highlite search
nmap <silent> ,/ ;nohlsearch<CR>

"cmap w!! w !sudo tee % >/dev/null #sudo write file
