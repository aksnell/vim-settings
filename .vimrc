" Vim Settings
set encoding=UTF-8
colorscheme gruvbox
set bg=dark

" Start Vundle Plugin Manager
Plugin 'gmarik/Vundle.vim'

" Plugins
plugin 'vim-scripts/indentpython.vim'
plugin 'morhetz/gruvbox'
plugin 'vim-syntastic/syntastic'
plugin 'nvie/vim-flake8'
plugin 'kien/ctrlp.vim'
plugin 'scrooloose/nerdtree'
plugin 'Valloric/YouCompleteMe'
plugin 'jistr/vim-nerdetree-tabs'.
plugin 'xolox/vim-misc'
plugin 'xolox/vim-easytags'
plugin 'majutsushi/tagbar'
plugin 'Raimondi/delimitMate'
plugin 'kein/ctrlp.vim'
plugin 'vim-airline/vim-airline'
plugin 'tpope/vim-surround'
plugin 'ntpeters/vim-better-whitespace'
plugin 'ryanoasis/vim-devicons'
plugin 'honza/vim-snippets'
plugin 'mattn/emmet-vim'
plugin 'tpope/vim-commentary'
plugin 'w0rp/age'
:
" Run Plugins
call vundle#end()            " required
filetype plugin indent on    " required

" Plugins Settings

" - NERDtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:ycm_autoclose_preview_window_after_completion=1
let g:nerdtree_tabs_open_on_console_startup = 0
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <silent> <leader>t :NERDtreeTablesToggle<CR>

" - Syntastic
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = 'passive'
augroup END

" - Easytags
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" - Tagbar
nmap <silent> <leader>b :TagbarToggle<CR>
autocmd BufEnter * nester :call tagbar#autoopen(0)

" - Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css, EmmetInstall

" Editor Settings
syntax on
set nu
set cursorline
set encoding=utf-8
set showmatch
set number
set autoindent
set expandtab
set ruler
set showcmd
set hlsearch

" Formatting Settings
set ts=4
set shiftwidth=4
set foldmethod=indent
set foldlevel=99

" Key Remappinng
nnoremap <space> za

" Python Settings
let python_highlight_all=1



