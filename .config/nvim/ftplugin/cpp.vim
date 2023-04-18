if has('nvim')
  nnoremap <F2> :w<CR>:vnew<CR>:call termopen("g++ -DLOCAL -DDEBUG -Wall ".expand('#'))<CR>
  nnoremap <F4> :w<CR>:vnew<CR>:call termopen("g++ -DDEBUG -Wall ".expand('#'))<CR>
  nnoremap <F5> :vnew<CR>:call termopen("./a.out < in")<CR>
  nnoremap <F8> :vnew<CR>:call termopen("./a.out")<CR>
  nnoremap <F9> :vnew<CR>:bprev<CR>
else 
  nnoremap <F2> :w<CR>:g++ -DLOCAL -DDEBUG -Wall %<CR>
  nnoremap <F4> :w<CR>:g++ -DLOCAL -Wall %<CR>
  nnoremap <F5> :./a.out < in<CR>
  nnoremap <F8> :./a.out<CR>
endif

function! Submit(contestId, problemId)
  let str = "cf submit -f ".expand('%')." ".a:contestId." ".a:problemId
  let output = system(str)
  echo output
endfunction

nnoremap <F6>  gg0vG:!clang-format --style=google<CR>
nnoremap <F10> gg0vG$"+y<CR>


