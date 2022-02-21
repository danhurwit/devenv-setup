set nu
set nocompatible              " be iMproved, required
filetype off                  " required

map <F5> :NERDTreeToggle<CR>
map <F6> :MarkdownPreviewToggle<CR>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'preservim/nerdtree'
" markdown support
Plugin 'iamcco/markdown-preview.nvim' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" markdown preview config
let g:mkdp_filetypes = ['markdown']
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
