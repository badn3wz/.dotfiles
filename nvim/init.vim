let g:python2_host_prog = '/usr/bin/python2'
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.random/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.random')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('vim-scripts/LargeFile')
call dein#add('junegunn/fzf', {'merged': 0})
call dein#add('junegunn/fzf.vim', {'depends': 'fzf'})
call dein#add('scrooloose/nerdtree')
call dein#add('Vimjas/vim-python-pep8-indent')

" linter
call dein#add('w0rp/ale')

" auto close brackets and quotes
call dein#add('jiangmiao/auto-pairs')
call dein#add('tmhedberg/SimpylFold')


" Pretty themes
call dein#add('junegunn/seoul256.vim')
call dein#add('NLKNguyen/papercolor-theme')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('KeitaNakamura/neodark.vim')
call dein#add('freeo/vim-kalisi')
call dein#add('morhetz/gruvbox')
call dein#add('kristijanhusak/vim-hybrid-material')

" call dein#add('sheerun/vim-polyglot')
" call dein#add('neomake/neomake')
" call dein#add('Shougo/unite.vim')
" call dein#add('Shougo/vimfiler')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" End dein Scripts-------------------------

let g:python_host_prog = '/usr/bin/python3'

" call deoplete#enable()

let g:deoplete#enable_at_startup=1
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically
let g:deoplete#enable_smart_case = 1

set tabstop=4           " number of visual spaces interpreted for each tab
set softtabstop=4       " number of spaces inserted when using tab
set expandtab           " expand tabs to spaces
set shiftwidth=4        " When indenting with > / <
set smartindent
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

set number
set listchars=tab:>-,trail:•,extends:>,precedes:<
set list

"searching
set ignorecase
set smartcase
set incsearch
set nohlsearch
set t_Co=256   " This is may or may not needed.

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set background=dark
let g:enable_bold_font = 1
" colorscheme neodark
" colorscheme gruvbox
colorscheme hybrid_material
" colorscheme kalisi
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

set clipboard+=unnamedplus

" leader and keyboard shortcuts
let mapleader = ";"
nnoremap Q q
nnoremap q <nop>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" buffer switching
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>N :bp<CR>
nnoremap <Leader>d :bd<CR>
nmap <c-q> :b#<CR>
" buffer switching without prompt for save
set hidden
set noautochdir

" " neomake settings

" " autocmd! BufWritePost,BufEnter * Neomake
" autocmd! BufWritePost,InsertLeave *.py Neomake
" let g:neomake_open_list = 2
" let g:neomake_python_enabled_makers = ['flake8']
" let g:neomake_warning_sign = {
"   \ 'text': '⚠',
"   \ 'texthl': 'WarningMsg',
"   \ }

" let g:neomake_error_sign = {
"   \ 'text': '✗',
"   \ 'texthl': 'ErrorMsg',
"   \ }
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
set nolazyredraw


" nnoremap <Leader>f :VimilerExplorer<CR>
" nnoremap <Leader>t :Unite buffer -no-split -start-insert<CR>
" nnoremap <Leader>o :Unite file_rec/neovim -no-split -start-insert<cr>
" let g:unite_source_history_yank_enable = 1
" let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts =
" \ '-i --vimgrep --hidden --ignore ' .
" \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
" let g:unite_source_grep_recursive_opt = ''
" nnoremap <Leader>/ :Unite grep:.<cr>
" nnoremap <c-h> :Unite grep:.<cr>

let g:LargeFile=10

set foldlevel=99

set termguicolors

" FZF mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nmap <leader>o :HFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commits<CR>
nmap <leader>l :Lines<CR>
nmap <leader>g :GFiles?<CR>

" command for hidden files
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)


" file manager
nmap <leader>f :NERDTree<CR>

" faster split switching
" nnoremap <silent> <C-w> <C-w><C-w>
" inoremap <silent> <C-w> <Esc><C-w><C-w>
" vnoremap <silent> <C-w> <Esc><C-w><C-w>
