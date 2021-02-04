set nocompatible " be iMproved, required
set laststatus=2 
set number relativenumber 

filetype off " required
set rtp+=/home/manas/.vim/bundle/Vundle.vim 

let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py" 
" turn on completion in comments
let g:ycm_complete_in_comments=1
" load ycm conf by default
let g:ycm_confirm_extra_conf=0
" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
" only show completion as a list instead of a sub-window
set completeopt-=preview
" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
" don't cache completion items
" let g:ycm_cache_omnifunc=0
" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
" turn off the popup
" I did it because it is quite disturbing,
" However you can use <tab>
let g:ycm_auto_trigger=0
let g:ycm_auto_hover=1

call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'Valloric/YouCompleteMe' 
Plugin 'joshdick/onedark.vim' 
Plugin 'itchyny/lightline.vim' 
Plugin 'git://git.wincent.com/command-t.git' 
Plugin 'SirVer/ultisnips' 
Plugin 'honza/vim-snippets' 
Plugin 'rstacruz/sparkup',{'rtp':'vim/'} 
" Plugin 'lifepillar/vim-solarized8'
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'preservim/nerdtree'
call vundle#end() 

let g:UltiSnipsSnippetDir='~/.vim/bundle/vim-snippets/UltiSnips'
let g:UltiSnipsExpandTrigger="<c-h>"

set background=light
colorscheme PaperColor
let g:lightline = {'colorscheme':'PaperColor'}
syntax enable 
filetype on
filetype indent on 
filetype plugin on

inoremap {<CR> {<CR>}<ESC>ko<BS>
inoremap (<CR> (<CR>)<ESC>ko<BS>
nnoremap <F3> :NERDTreeToggle<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set showmode!
set ruler!
set mouse=a
