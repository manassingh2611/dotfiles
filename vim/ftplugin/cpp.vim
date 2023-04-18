" C++ only
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction
" autocmd BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp,*.vert,*.frag :call FormatBuffer()
nnoremap <F6> :call FormatBuffer()<CR>
nnoremap <buffer> <F2> :w<CR>:!g++ -DLOCAL -O2 %<CR>
nnoremap <buffer> <F5> :!./a.out < in<CR>
nnoremap <buffer> <F8> :!./a.out<CR>
nnoremap <buffer> <F9> :w<CR>:!./submit.sh %
nnoremap <buffer> <F10> :call FormatBuffer()<CR>gg"+yG
