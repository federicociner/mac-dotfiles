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

" vim-plug config (must have vim-plug installed via https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'myusuf3/numbers.vim'

" initialize plugin system
call plug#end()

" autostart NERDTre
autocmd vimenter * NERDTree

" mappings for numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
