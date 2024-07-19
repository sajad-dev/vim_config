set encoding=utf8
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set guifont=hack_nerd_font:h11
"set cc=100 " Show at 80 column a border for good code style                      
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim`:wq

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin '907th/vim-auto-save'
Plugin 'NLKNguyen/papercolor-theme'
Bundle 'm2mdas/phpcomplete-extended-laravel'
call vundle#end()            " required

let g:kite_supported_languages = ['python', 'javascript']
call plug#begin('~/.vim/plugged')
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/indentpython.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'noahfrederick/vim-composer'
Plug 'neanias/everforest-nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
call plug#end()

"colorscheme gruvbox
let g:bargreybars_auto=0
"let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1
let g:airline#extension#tabline#enable=1
let g:airline#extension#tabline#left_sep=' '
let g:airline#extension#tabline#left_alt_sep='|'
let g:airline#extension#tabline#formatter='unique_tail'
let NERDTreeQuitOnOpen=1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = '#'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = '#'


autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
set background=dark
colorscheme PaperColor
let g:loaded_phpcomplete_extended = 1

set encoding=UTF-8
let g:NERDTreeIndicatorMapCustom = {
      \ "nerdtree-git-plugin": {
      \   "Modified": "✹",
      \   "Staged": "✚",
      \   "Untracked": "✭",
      \   "Renamed": "➜",
      \   "Unmerged": "═",
      \   "Deleted": "✖",
      \   "Dirty": "✗",
      \   "Clean": "✔︎",
      \   "Ignored": "☒",
      \   "Unknown": "?"
      \ }
      \}

set mouse=v

nnoremap <C-g> :NERDTree<CR>
nnoremap <C-h> :NERDTreeClose<CR>
map  gc :tabclose<CR>
nnoremap <leader>p :Prettier<CR>

let g:NERDTreeQuitOnOpen=0

let g:auto_save = 0
set omnifunc=phpcomplete#CompletePHP
set tagfunc=jsfileimport#tagfunc

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

set mouse=v
