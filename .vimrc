" initialize pathogen
execute pathogen#infect()

" includes
source ~/.vim/mystuff/mappings.vim

" for proper indendation
filetype plugin indent on

" options
syntax on  " turn on syntax highlighting
set number " turn on line numbers
set fileformat=unix

" set leader to _
let mapleader = "_"



" highlight search terms
set hlsearch

" highlight cursor line
set cursorline

" set tabstop width
set tabstop=4
set shiftwidth=4

" set indenting options
set autoindent
set smartindent


if executable('ag')
	" Note we extract the column as well as the file and line number
	set grepprg=ag\ --nogroup\ --nocolor\ --column
	set grepformat=%f:%l:%c%m
endif


" swapfiles dir
set dir=~/.vim/_swap//

" clipboard copying / pasting on windows / mac
set clipboard=unnamed

" airline stuff
let g:airline_powerline_fonts=1
set laststatus=2


" vertical gdiff
set diffopt+=vertical

" ctrlP options
let g:ctrlp_custom_ignore = {
	\ 'dir': 'node_modules\|bower_components\|\.git'
\ }


" highlight extra whitespaces
highlight ExtraWhitespace guibg=#000000
match ExtraWhitespace /\s\+\%#\@<!$/

" show highlighting groups for current word
" =======================================
    nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" ======================================

command VSmake call VSmakeFun()

function VSmakeFun()
	let op = system("vsmake")
	split op.txt
	normal ggVGx
	put =op
	wq
	cfile op.txt
endfunction

" custom snippet files
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['html'] = 'html,myhtml,myangularhtml'
let g:snipMate.scope_aliases['javascript'] = 'javascript,myjavascript,myangularjs'

" set colorscheme
colorscheme molokai_dark

" set correct font to prevent italics cutoff
if has("gui_macvim")
  set guifont=Menlo:h10
elseif has("gui_running")
  set guifont=Consolas:h10
endif

" external script
" source $home/vimfiles/myscripts/closeStuff.vim
