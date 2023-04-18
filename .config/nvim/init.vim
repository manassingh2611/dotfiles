" (c) 2023 Manas Singh

call plug#begin()
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree'
  Plug 'rust-lang/rust.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'sonph/onehalf', {'rtp': 'vim'}
call plug#end()

" you-complete-me settings
let g:ycm_complete_in_comments=1 " turn on completion in comments
let g:ycm_collect_identifiers_from_tags_files=1 " turn on tag completion
let g:ycm_auto_trigger=1
let g:ycm_auto_hover=1

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ultisnips Settings
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-u>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"

" Colors 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme onehalfdark
let g:airline_theme='onehalflight'

" mappings
inoremap {<CR> {<CR>}<ESC>ko
inoremap (<CR> (<CR>)<ESC>ko<BS>
nnoremap <F3> :NERDTreeToggle<CR>
tnoremap <esc> <c-\><c-n>:buffer #<CR>

" props
set background=dark
set colorcolumn=80
set cursorline
set expandtab
set hlsearch
set list
set mouse=a
set number relativenumber
set ruler!
set shiftwidth=2
set showbreak=↪
set showmode!
set tabstop=2
set t_Co=256
