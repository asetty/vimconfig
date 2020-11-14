" ~/.vimrc
" asetty
set nocompatible              " be iMproved, required
filetype off    
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mhartington/oceanic-next'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'yassinebridi/vim-purpura'
call vundle#end()
filetype plugin indent on 
" **************************************
" * VARIABLES
" **************************************
set nu				" line numbering on
set autoindent			" autoindent on
set noerrorbells		" bye bye bells :)
set modeline			" show what I'm doing
set showmode			" show the mode on the dedicated line (see above)
set nowrap			" no wrapping!
set ignorecase			" search without regards to case
set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set incsearch			" incremental searching
set nohlsearch			" meh
set bs=2			" fix backspacing in insert mode
set bg=dark

set expandtab
set shiftwidth=4
set tabstop=4
" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{js,c,h,java,cpp,hpp,sh} set expandtab
au BufRead,BufNewFile *.{js,c,h,java,cpp,hpp,sh} set shiftwidth=4
au BufRead,BufNewFile *.{js,c,h,java,cpp,hpp,sh} set tabstop=4

au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py set shiftwidth=3
au BufRead,BufNewFile *.py set tabstop=3

au BufRead,BufNewFile *.{ml,yml,yaml} set expandtab
au BufRead,BufNewFile *.{ml,yml,yaml} set shiftwidth=2
au BufRead,BufNewFile *.{ml,yml,yaml} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
" syntax on

" This is my prefered colorscheme, open a file with gvim to view others
":colors elflord
syntax enable
" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
set termguicolors
endif

colorscheme OceanicNext
"colorscheme purpura

" airline settings
let g:airline_theme='oceanicnext'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

let g:go_version_warning = 0

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
" setlocal textwidth=80		" used for text wrapping
