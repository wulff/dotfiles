" Ignore backwards compatibility
set nocompatible

" Load sensible.vim as early as possible
runtime! plugin/sensible.vim

" Always use UTF8 encoding
set encoding=utf-8

" Set the default colorscheme
try
  colorscheme flattened_dark
catch
endtry

let mapleader = ","

" Always display the mode
set showmode
set showcmd

" Load plugins and indent files for specific file types
filetype plugin indent on

set hidden
set smartindent
set whichwrap+=<,>

set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

set scrolloff=3

set hlsearch
set ignorecase
set smartcase

set magic

set showmatch
set matchtime=2

set shortmess=atI

set noerrorbells
set novisualbell

" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Enable and configure the wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=*/.git,*/.DS_Store

" Show linenumbers and fold column
set number
set foldcolumn=1

set display+=lastline

" Statusline
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=%<\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ \[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

" Use the silver searcher if it's available
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Mappings

" Don't use Ex mode, use Q for formatting.
map Q gq

" Shortcut to save the current buffer
nmap <leader>w :w!<cr>

" Create a vertical split with an empty file
nmap <leader>v :vnew<cr>

" Create a horizontal split with an empty file
nmap <leader>h :new<cr>

" Toggle line numbers
nmap <F12> :set invnumber<cr>

" Make undo delete less stuff.
inoremap <C-U> <C-G>u<C-U>

" Save a file as a privileged user
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Autocommands

" Jump to last known position when opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Functions

" Return a clean version of the branch name
function! StatuslineGit(...) abort
  if !exists('b:git_dir')
    return ''
  endif

  return '  '.FugitiveHead(7).' '
endfunction
