" Unite tip: press ctrl-l while in file_rec window to refresh file list
"
" nvim config
" located in ~/.config/nvim/init.vim
" press <c-l> to refresh unite file list
set regexpengine=1
set encoding=utf-8
let mapleader = ";"
set list
set wildmenu
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

"set all html as django html
au BufNewFile,BufRead *.html set filetype=htmldjango
" color base16-flat
" colorscheme jellybean
" color hybrid
" colorscheme PaperColor
" color base16-oceanicnext
" color base16-ocean
let base16colorspace=256
color base16-tomorrow
set background=dark
set ai

set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//
set undodir=~/.config/nvim/undo//

" python better syntax highliting
let python_highlight_all = 1


"sorting in visual mode
vnoremap <Leader>s :sort<CR>

set tags=tags;/
" File and buffer handling
nnoremap <Leader>f :VimFilerExplorer<CR>
nnoremap <Leader>t :Unite buffer -no-split -start-insert<CR>
nnoremap <Leader>o :Unite file_rec/async -no-split -start-insert<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>/ :Unite grep:.<cr>
nnoremap <c-h> :Unite grep:.<cr>

" call unite#filters#matcher_default#use(['matcher_fuzzy'])


" Move line up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" required for moving line inside tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif


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
"
" deoplete options concerning jedi-vim
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = 0


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
let g:jedi#goto_assignments_command = "<leader>h"
let g:jedi#goto_definitions_command = "<leader>g"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
" let g:airline_extensions = []



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

" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 2
" supertab tab from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"


" Neomake
" autocmd! BufWritePost,BufEnter * Neomake
autocmd! BufWritePost * Neomake
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

" Utlisnips config
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

au FileType htmldjango inoremap {% {%  %}<left><left><left>
au FileType htmldjango inoremap {%} {%  %}<left><left><left>
au FileType htmldjango inoremap {{} {{  }}<left><left><left>

au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango
let g:htmldjangocomplete_html_flavour = 'html5'

" let g:pymode_rope = 0
" let g:pymode_lint = 0
" let g:pymode_rope_goto_definition_bind = "<C-]>"




call plug#begin()
Plug 'bling/vim-airline' " powerline replacement
Plug 'Shougo/unite.vim' " buffer switch
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-commentary/' " comment out lines
" Plug 'Valloric/YouCompleteMe' " autocompletion
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
" Plug 'honza/vim-snippets'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'kchmck/vim-coffee-script'
Plug 'benekastah/neomake'
Plug 'sukima/xmledit'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-ragtag'
Plug 'majutsushi/tagbar'
" Plug 'mjbrownie/vim-htmldjango_omnicomplete'
" Plug 'othree/html5.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'hdima/python-syntax'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'


call plug#end()
