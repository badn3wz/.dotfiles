" nvim config
" located in ~/.config/nvim/init.vim
" press <c-l> to refresh unite file list
set encoding=utf-8
set list
" set cursorline
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
filetype plugin indent on

" color base16-flat
" color jellybeans
set background=dark
" color hybrid
colorscheme PaperColor
" color base16-oceanicnext
" color base16-ocean

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
nnoremap <Leader>q :q<CR>

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
let g:deoplete#enable_at_startup = 1
" let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#enable_smart_case = 1
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


" JEDI VIM
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview


let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='PaperColor'
let g:airline_powerline_fonts=1



" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" " Syntastic
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_error_symbol = "✗"
" let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_style_error_symbol = '✠'
" let g:syntastic_style_warning_symbol = '≈'
" let g:syntastic_python_flake8_args = "--ignore=E501"
" let g:syntastic_python_flake8_args = "--max-line-length=100"
" set colorcolumn=100

let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 2
" supertab tab from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"


" Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_open_list = 2
let g:neomake_python_enabled_makers = ['flake8']


let g:neomake_warning_sign = {
  \ 'text': '⚠',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': '✗',
  \ 'texthl': 'ErrorMsg',
  \ }


call plug#begin()
Plug 'bling/vim-airline' " powerline replacement
Plug 'Shougo/unite.vim' " buffer switch
" Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-commentary/' " comment out lines
" Plug 'Valloric/YouCompleteMe' " autocompletion
" Plug 'scrooloose/syntastic' " syntax checking, that blessed annoying split with lint errors
Plug 'Shougo/vimfiler' " file browser
Plug 'tpope/vim-surround' " surround text with symbols ie. ' <
Plug 'chrisbra/Recover.vim' " diffing recovered swap file with saved file
Plug 'raimondi/delimitmate' " auto close parentesis and quotes
Plug 'davidhalter/jedi-vim'
Plug 'airblade/vim-gitgutter'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine' " visual indentation
Plug 'KabbAmine/vCoolor.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'chriskempson/base16-vim'
Plug 'honza/vim-snippets'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'kchmck/vim-coffee-script'
Plug 'benekastah/neomake'
call plug#end()
