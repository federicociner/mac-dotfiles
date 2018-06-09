" Enable syntax highligting
filetype plugin on
filetype indent on
syntax on

" Set UTF-8 as standard encoding
set encoding=utf8

" Enable autoread
set autoread

" Set 5 lines to the cursor (when moving vertically using j/k)
set so=5

" Show current position
set ruler

" Highlight search results
set hlsearch

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set one tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" NERDtree settings
autocmd vimenter * NERDTree"
