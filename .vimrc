set nocompatible
filetype off
filetype plugin indent on
syntax on

" Sets Vim shell to bash
set shell=/bin/zsh

" Sets undo directory
set undodir=~/.vim/undo

"-------------------------Visuals-------------------------"
syntax enable
set background=dark
colorscheme brogrammer
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set t_CO=256
set guioptions-=l                      "Hide left scrollbar
set guioptions-=L                   "Hide left scrollbar when split vertically
set guioptions-=r                      "Hide right scrollbar
set guioptions-=R                   "Hide right scrollbar when split vertically

"---------------------------------------------------------"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'anned20/vimsence'
Plugin 'scrooloose/syntastic'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'darthmall/vim-vue'
Plugin 'wting/rust.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

set laststatus=2
set backspace=indent,eol,start
set showcmd
set lazyredraw
set modelines=0
set autoindent

"The following two lines enables hybrid line numbers which means the currently
"selected line shows an absolute number, but the other lines are relative to
"the curre line.
set number
set relativenumber

set noswapfile
set showmatch
set ignorecase
set smartcase
set nowrap

"------------------Search-------------------"
set hlsearch
set incsearch
"-------------------------------------------"

let g:html_indent_tags = 'li\|p'

" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

let mapleader = ','
set smarttab
set tabstop=2
set shiftwidth=2
set smartindent

" Fuzzy file searching
set path+=**
set wildmenu

" ----- Custom Keybindings -----
set foldenable
set foldmethod=indent
set foldlevelstart=20

set mouse=a

set pastetoggle=<F9>

nnoremap j gj
nnoremap k gk

au BufRead,BufNewFile *.less set filetype=scss
au BufRead,BufNewFile *.scss.liquid set filetype=scss
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.js.liquid set filetype=javascript
au BufRead,BufNewFile *.liquid set filetype=html
au BufRead,BufNewFile *.blade.php set filetype=html
au BufRead,BufNewFile *.vue set filetype=html
" ----- End custom keybindings -----

" ---- ntpeters/vim-better-whitespace -----
" autocmd BufWritePre <buffer> StripWhitespace

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn

" Default line highlighting for unknown filetypes
hi String ctermfg=140
hi CursorLine ctermbg=235
hi CursorLine guibg=#D3D3D3 cterm=none

" ----- scrooloose/syntastic settings -----
nmap <F1> :Errors<CR>
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_check_on_open = 0
let g:airline#extensions#hunks#non_zero_only = 1
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ---- NerdTree config ----
nmap <C-t> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['_notes', 'dwsync.xml', '.DS_store']

"----------------------Auto-Commands--------------------------------"

" Automatically source the Vimrc file on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

autocmd FileType vue syntax sync fromstart
au BufNewFile,BufRead *.vue setf vue

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
