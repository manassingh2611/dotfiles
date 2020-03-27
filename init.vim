let g:ycm_global_ycm_extra_conf = '/home/manas/.config/nvim/.ycm_extra_conf.py'
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number relativenumber   " add line numbers
set wildmode=longest,list   " get bash-like tab completions
colorscheme darkblue
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.cpp 0r /home/manas/coding/base.cpp
  augroup END
endif

inoremap {<CR> {<CR>}<Esc>O

call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
call plug#end()
