set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Highlight and indentation for JS
Plugin 'pangloss/vim-javascript'

" Highlight and indentation for JSX
Plugin 'mxw/vim-jsx'

" Expand abbreviations, <C-Y,>
Plugin 'mattn/emmet-vim'

" Async linting addon
Plugin 'w0rp/ale'

" Again an async adjustment
Plugin 'skywind3000/asyncrun.vim'

" Autoclosetags
Plugin 'alvan/vim-closetag'

" Autoclose characters
Plugin 'Raimondi/delimitMate'
" Nothing better that autocompletion
Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" some eslint config
let g:ale_lint_on_enter = 1

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

set softtabstop=4

set smarttab

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch
set matchtime=0
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
" enable all Python syntax highlighting features
let python_highlight_all = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Project browser
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4

" CtrlP
let g:ctrlp_custom_ignore = '**/node_modules/'

set autoread
set splitbelow
set splitright

let g:netrw_list_hide='*.swp'

" Start dir browser if no argument is set
augroup DirectoryBrowserOpenIfNoArgs
    autocmd!
    autocmd VimEnter * if @% == "" | 20Vexplore | endif
augroup END
