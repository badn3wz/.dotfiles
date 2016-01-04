" nvim config
" located in ~/.config/nvim/init.vim
" press <c-l> to refresh unite file list
set encoding=utf-8
set list
set cursorline
set clipboard+=unnamedplus
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
set noautochdir
" autoindent with spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" color base16-flat
" color jellybeans
" set background=dark
set background=dark
colorscheme PaperColor


let mapleader = ";"

"sorting in visual mode
vnoremap <Leader>s :sort<CR>

" File and buffer handling
nnoremap <Leader>f :VimFilerExplorer<CR>
nnoremap <Leader>t :Unite buffer -no-split -start-insert<CR>
nnoremap <Leader>o :Unite file_rec/async -no-split -start-insert<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>/ :Unite grep:.<cr>
" call unite#filters#matcher_default#use(['matcher_fuzzy'])



" Move line up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" buffer switching
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>N :bp<CR>
nmap Q :b#<CR>

" Faster save
nnoremap <Leader>w :w<CR>

" easy moving through splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
set splitbelow
set splitright

" move cursor in Insert Mode 
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" YouComleteMe settings
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" let g:python3_host_prog = '/usr/bin/python3'
" let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#enable_smart_case = 1
" set completeopt+=noinsert


" FUCKIN GENIOUS!!!!!!!!111
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

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
" let g:pymode_rope = 1
" Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'

" "Linting
" let g:pymode_lint = 1
" let g:pymode_lint_checker = "flake8"
" " Auto check on save
" let g:pymode_lint_write = 1

" " Support virtualenv
" let g:pymode_virtualenv = 1

" " Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'

" " syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all

" " Don't autofold code
" let g:pymode_folding = 0

" JEDI VIM
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview



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
" let g:airline_theme= 'serene'
let g:airline_theme='PaperColor'



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_python_flake8_args = "--ignore=E501"
let g:syntastic_python_flake8_args = "--max-line-length=100"
set colorcolumn=100



" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
 "if &compatible
 "  set nocompatible               " Be iMproved
 "endif

" Required:
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'bling/vim-airline' " p>owerline replacement
NeoBundle 'Shougo/unite.vim' " buffer switch
" NeoBundle 'klen/python-mode' " python ide
" NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'tpope/vim-commentary/' " comment out lines
" NeoBundle 'Valloric/YouCompleteMe' " autocompletion
NeoBundle 'scrooloose/syntastic' " syntax checking, that blessed annoying split with lint errors
NeoBundle 'Shougo/vimfiler' " file browser
NeoBundle 'tpope/vim-surround' " surround text with symbols ie. ' <
" NeoBundle 'KabbAmine/zeavim.vim' " zeal documentation
NeoBundle 'chrisbra/Recover.vim' " diffing recovered swap file with saved file
NeoBundle 'raimondi/delimitmate' " auto close parentesis and quotes
" NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'ervandew/supertab'
NeoBundle 'Yggdroot/indentLine' " visual indentation
NeoBundle 'KabbAmine/vCoolor.vim'
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'mattn/emmet-vim'

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

