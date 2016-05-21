" shortcuts to vimrc and vimfiles
nmap <F1><F1> :e ~/.vimrc<CR>
nmap <F1><F2> :e ~/.vim/

" toggle relative line numbers
nnoremap <F2> :set relativenumber! relativenumber?<CR>
nnoremap <F6> :noh<CR>

nnoremap <C-N> :NERDTreeToggle<CR>
nmap t <C-]>
nmap T <C-O>

" search for functions
nnoremap <C-F> /function 

" jump to next //// comment
nnoremap ÖA /\/\/\/\/<CR>:noh<CR>zz

" jump to next function comment
nnoremap ÖF /function<CR>:noh<CR>zz

nnoremap <F3> :tabp<CR>
nnoremap <F4> :tabn<CR>

" shortcut to last open file"
nmap ## :b#<CR>
