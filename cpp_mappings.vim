" This shit goes into ~/.vim/ftplugin/cpp_mappings.vim (for noobs)
"Fucking compile
nnoremap <F2> :w<CR>:!g++ -DLOCAL -O2 %<CR>
"Fucking run
nnoremap <F8> :!./a.out<CR>
"Fucking indent according to the rules defined by you in your fucking clang-format file
nnoremap <F6> ggvG:!clang-format<CR><esc>2<c-o>:w<CR>zz
"Fucking run by taking input from in.txt
nnoremap <F5> :!./a.out < in<CR>
"Copy the fucking shit to the fucking clipboard
nnoremap <F10> gg"+yG2<c-o>
"Print the fucking time, for tracking your solving speed and shit (for nerds)
nnoremap <F7> gg:r!date<CR>i<CR>
