set list
set cursorline
set clipboard=unnamedplus
nnoremap q <nop>
" line numbering
set number
set ruler
set showmatch
" smartcase search
set ignorecase
set smartcase
" buffer switching without save prompt
set hidden


color jellybeans
" set background=dark

let mapleader = ","

"sorting in visual mode
vnoremap <Leader>s :sort<CR>

" File and buffer handling
nnoremap <Leader>f :VimFilerExplorer<CR>
nnoremap <Leader>o :Unite buffer<CR>

" Move line up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" indenting in visualmode
" vnoremap < <gv "indentation
" vnoremap > >gv "indentation

" easy indent/outdent
" nnoremap < <<
" nnoremap > >>

"syntax highlighting
syntax on
filetype off


"set vimfiler as default file manager
let g:vimfiler_as_default_explorer = 1






"PYTHON MODE SETTINGS


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
"
"
"
"
"
"
"
"
"
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


" let g:deoplete#enable_at_startup = 1



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




" Vim django detection 
" https://gist.github.com/robbyt/8510934
"
function FindDjangoSettings2()
    if strlen($VIRTUAL_ENV) && has('python')
        let django_check = system("pip freeze | grep -q Django")
        if v:shell_error
            " echo 'django not installed.'
        else
            " echo 'django is installed.'
            let output  = system("find $VIRTUAL_ENV \\( -wholename '*/lib/*' -or -wholename '*/install/' \\) -or \\( -name 'settings.py' -print0 \\) | tr '\n' ' '")
            let outarray= split(output, '[\/]\+')
            let module  = outarray[-2] . '.' . 'settings'
            let syspath = system("python -c 'import sys; print sys.path' | tr '\n' ' ' ")
            " let curpath = '/' . join(outarray[:-2], '/')
            execute 'python import sys, os'
            " execute 'python sys.path.append("' . curpath . '")'
            " execute 'python sys.path.append("' . syspath . '")'
            execute 'python sys.path = ' . syspath
            execute 'python os.environ.setdefault("DJANGO_SETTINGS_MODULE", "' . module . '")'
        endif
    endif
endfunction











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
NeoBundle 'bling/vim-airline' " p>owerline replacement
NeoBundle 'Shougo/unite.vim' " buffer switch
NeoBundle 'klen/python-mode' " python ide
" NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'tpope/vim-commentary/' " comment out lines
NeoBundle 'Valloric/YouCompleteMe' " autocompletion
NeoBundle 'scrooloose/syntastic' " syntax checking?
NeoBundle 'Shougo/vimfiler' " file browser
NeoBundle 'tpope/vim-surround' " surround text with symbols ie. ' <
NeoBundle 'KabbAmine/zeavim.vim' " zeal documentation
NeoBundle 'chrisbra/Recover.vim' " diffing recovered swap file with saved file
NeoBundle 'raimondi/delimitmate' " auto close parentesis and quotes
" NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"NeoBundle 'davidhalter/jedi-vim'


NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

