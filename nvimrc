set list
set cursorline
set clipboard=unnamed
nnoremap q <nop>
set number
set ruler
set showmatch

color hybrid

let mapleader = ","

"sorting in visual mode
vnoremap <Leader>s :sort<CR>

" indenting in visualmode
" vnoremap < <gv "indentation
" vnoremap > >gv "indentation

" easy indent/outdent
" nnoremap < <<
" nnoremap > >>

"syntax highlighting
syntax on
filetype off

"POWERLINE (airline akshully)
"let g:airline#extensions#tabline#enabled = 1



"
" PASTED FROM SOMEONEELSE
"
"
"
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'serene'
"
"
"
"
"
"
"


let g:deoplete#enable_at_startup = 1

let g:pymode_rope = 0


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
 "if &compatible
 "  set nocompatible               " Be iMproved
 "endif

" Required:
set runtimepath+=~/.nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.nvim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'klen/python-mode'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'tpope/vim-commentary/'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'scrooloose/syntastic'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
