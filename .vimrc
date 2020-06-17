"Stops vim from behaving in a strongly vi compatible way. 
set nocompatible

" Ask before exiting
set confirm

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif


" **********************************************************
" Editing
" **********************************************************

set showmatch
"When a bracket is inserted, briefly jump to the matching one.

" Set backspace config.
set backspace=eol,start,indent

" Delete comment character when joining commented lines.
set formatoptions+=j

set encoding=utf-8

"Wrap long lines at breakat character
set linebreak

" **********************************************************
" Tabs and indentation
" **********************************************************

"Copy indent from current line when starting a new line.
set autoindent

"Enables automatic C program indenting.
set cindent

"C indent options
set cinoptions=:0,b1,g0,+4,(4,u2,w1

" search runtimepath for language-specific indent rules
filetype plugin indent on

"How many columns a tab counts for.
set tabstop=2

"How many columns text is indented with the reindent operations (<< and >>).
set shiftwidth=2

" Use spaces rather than tabs.
set expandtab
set smarttab


" **********************************************************
" Search
" **********************************************************

"Highlighting of search result.
set hls
set incsearch
nnoremap <silent> ,<space> :nohlsearch<CR>

"Ignore case when searching.
set ignorecase  
" foobar vs FooBar
set smartcase

" **********************************************************
" Look and feel
" **********************************************************

"No toolbar.
set guioptions-=T

"No beeps.
set visualbell t_vb=

"Last window should have a status line.
set laststatus=2

syntax on
set number
set bg=dark
colorscheme torte
set gfn=Liberation\ Mono\ 11

"How many tenths of a second to blink.
set mat=2

" **********************************************************
" Navigation
" **********************************************************

"Minimal number of screen lines to keep above and below the cursor.
set scrolloff=1

"As much as possible of the last line in a window will be displayed.
set display=lastline

" **********************************************************
" Completion
" **********************************************************

"Command-line completion operates in an enhanced mode.
"On pressing 'wildchar' (usually <Tab>) to invoke completion,
"the possible matches are shown just above the command line.
set wildmenu
set wildmode=list:longest,full


"Allows pattern matching with special characters
set magic

"Persistent undo.
set undodir=~/.vim/undodir
set undofile

" ctags
" It means 'look for a tags file in the directory of the current file, then upward 
" until / and in the working directory, then upward until /".
set tags=./tags;,tags;


" **********************************************************
" Key shortcuts
" **********************************************************
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


" When vimrc is edited, reload it
"autocmd! bufwritepost vimrc source ~/.vimrc

"Cursor keys goto previous line
"set whichwrap+=<,>,h,l

" Toggle highlight of the last search result
nnoremap <F3> :set hlsearch!<CR>


" **********************************************************
" Filetype specific
" **********************************************************
filetype on
au BufRead,BufNewFile *.s set filetype=nasm



" **********************************************************
" statusline
" **********************************************************
set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%#LineNr#
set statusline+=%n
set statusline+=\ %f
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ 

" **********************************************************
" syntastic
" **********************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" We can have multiple checkers per language and aggregate their results
" let g:syntastic_aggregate_errors = 1
let g:syntastic_reuse_loc_lists = 0
let g:syntastic_python_checkers = ['pylint']
" python is checked on file write but other files on :SyntasticCheck
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["python"],
    \ "passive_filetypes": [] }


" **********************************************************
" youcompleteme
" **********************************************************
" report errors, conflicts with syntastic
let g:ycm_show_diagnostics_ui = 0
" called function signature help
let g:ycm_auto_trigger = 1

" **********************************************************
" plug
" **********************************************************
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
