set nocompatible " be iMproved, required
set laststatus=2 
set number relativenumber 
"set number
"augroup numbertoggle
"    autocmd!
"    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END

filetype off " required

"set the runtime path to include Vundle and initialize
set rtp+=/home/manas/.vim/bundle/Vundle.vim 
"set the global default path for the YouCompleteMe config file
let g:ycm_global_ycm_extra_conf="/home/manas/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py" 
" 
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
let g:ycm_cache_omnifunc=0
" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
" turn off the popup
" I did it because it is quite disturbing,
" However you can use <tab>
let g:ycm_auto_trigger=0
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

let g:UltiSnipsSnippetDir='/home/manas/.vim/bundle/vim-snippets/UltiSnips'
" create a mapping for triggering ultisnips
" don't use <tab> if you use YouCompleteMe
" UltiSnips default triggers
" expand : <tab>
" jump-next : <c-j>
" jump-prev : <c-k>
let g:UltiSnipsExpandTrigger="<c-h>"

set background=light
colorscheme PaperColor
syntax enable 
filetype on
filetype indent on 
filetype plugin on

"All these shortcuts are available in .vim/ftplugin/cpp_mappings.vim
"autocmd filetype cpp nnoremap <F2> :!g++ -g %<CR> 
"autocmd filetype cpp nnoremap <F8> :!./a.out<CR>:!<CR> 
"autocmd filetype cpp nnoremap <F6> ggvG:!clang-format<CR><esc>2<c-o>
"autocmd filetype cpp nnoremap <F5> :!./a.out < in<CR>:!<CR>
"nnoremap <F10> gg"+yG2<c-o>

"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>ko<BS>
nnoremap <F3> :NERDTreeToggle<CR>
"inoremap {;<CR> {<CR>};<ESC>O

set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set showmode! 
set ruler!
set mouse=a
