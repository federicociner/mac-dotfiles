" :W to save file as sudo
command W w !sudo tee % > /dev/null

" enable syntax highligting
filetype plugin on
filetype indent on
syntax on

" configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
