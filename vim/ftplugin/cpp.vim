nnoremap <F2> :w<CR>:!g++ -DLOCAL -O2 %<CR>
nnoremap <F8> :!./a.out<CR>
nnoremap <F6> ggvG:!clang-format<CR><esc>2<c-o>:w<CR>zz
nnoremap <F5> :!./a.out < in<CR>
nnoremap <F10> gg"+yG2<c-o>
nnoremap <F7> gg:r!date<CR>i<CR>
nnoremap <F9> :w<CR>:!./submit.sh % 
