set nocompatible
set encoding=utf8

" Set up Vundle ==========================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-eunuch'
Plugin 'tmhedberg/simpylfold'

Plugin 'klen/python-mode'
Plugin 'a.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'chrisbra/Colorizer'
" Plugin 'chiel92/vim-autoformat'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'hynek/vim-python-pep8-indent' python indenting
" Plugin 'tmhedberg/simpylfold' " python folding
" Plugin 'wolfgangmehner/c.vim' 
" Plugin 'valloric/youcompleteme' 
"
" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'AlessandroYorba/Alduin'
Plugin 'jansenfuller/crayon'
Plugin 'fcpg/vim-fahrenheit'
Plugin 'romainl/flattened'
Plugin 'YorickPeterse/happy_hacking.vim'
Plugin 'marlun/vim-starwars'
Plugin 'jeetsukumaran/vim-nefertiti'
Plugin 'vim-scripts/neutron.vim'
Plugin 'ninja/sky'
Plugin 'kreeger/benlight'

call vundle#end()
filetype plugin indent on
" End of Vundle section ===================================


" Automatically re-read a file that's been changed by another program
set autoread

"In normal and visual mode, map space bar to the colon
"noremap <Space> :
"vmap <Space>:

set ruler
set cmdheight=2
set laststatus=2
set number
"set showcmd


"

set backspace=eol,start,indent
set whichwrap+=<,>,h,l,b,[,]
"inoremap <Down> <C-o>gj
"inoremap <Up> <C-o>gk


"Searching
set ignorecase
set incsearch
set smartcase
set hlsearch
nnoremap <esc> :noh<CR>
set magic
set showmatch

set mouse=a
set noerrorbells
set visualbell

syntax enable
filetype on
filetype plugin on

set smarttab
set shiftwidth=3
set tabstop=3
set softtabstop=3
set autoindent
set smartindent

let NERDMenuMode="2"

"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd FileType * nested :call tagbar#autoopen(0)
"autocmd BufEnter * nested :call tagbar#autoopen(0)

colorscheme desert
set background=dark
"autocmd BufEnter * colorscheme desert
"autocmd BufEnter *.php colorscheme twilight
"autocmd BufEnter *.py colorscheme Tomorrow-Night

if has("gui_running")
	set guifont=Inconsolata\ 14
endif

set statusline=%n:%t "Buffer Number and file name
set statusline+=%m%r%h%w%y "Flags
set statusline+=%{fugitive#statusline()}%=
set statusline+=%b,x%B\ .\ %l,%L\ .\ %c
