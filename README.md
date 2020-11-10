# Neovim Resources

This is a repo to configure neovim/vim for competitive programming in C/C++.

Setting up YouCompleteMe:

```sh
git clone https://github.com/ycm-core/YouCompleteMe.git -C ~/.vim/bundle/
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
```
Use NERDTree if you like, I installed it, but I hate it because in my line of work we have to focus on a single file for long lengths of time. We don't do HTML.

Special thanks to [Jonas Devlieghere](https://github.com/JDevlieghere) whose YCM config I copied directly from [here](https://jonasdevlieghere.com/a-better-youcompleteme-config/)
