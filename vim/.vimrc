" enable syntax highligting
filetype plugin on
filetype indent on
syntax on

" set UTF-8 as standard encoding
set encoding=utf8

" enable autoread
set autoread

" set 5 lines to the cursor (when moving vertically using j/k)
set so=5

" show current position
set ruler

" highlight search results
set hlsearch

" configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" set one tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

" vim-plug config (must have vim-plug installed via https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'myusuf3/numbers.vim'
Plug 'qpkorr/vim-bufkill'

" initialize plugin system
call plug#end()

" NERDTree config
autocmd vimenter * NERDTree

" mappings for numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" mappings to switch buffers easily
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

