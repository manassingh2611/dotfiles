" This goes into ~/.vim/ftplugin/cpp_mappings.vim
"compile
nnoremap <F2> :w<CR>:!g++ -DLOCAL -O2 %<CR>
"run
nnoremap <F8> :!./a.out<CR>
"indent according to the rules defined in the clang-format file
nnoremap <F6> ggvG:!clang-format<CR><esc>2<c-o>:w<CR>zz
"run by taking input from in.txt
nnoremap <F5> :!./a.out < in<CR>
"Copy the to the clipboard
nnoremap <F10> gg"+yG2<c-o>
"Print the time, for tracking your solving speed (stats for nerds)
nnoremap <F7> gg:r!date<CR>i<CR>
