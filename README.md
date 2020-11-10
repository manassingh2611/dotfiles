# Neovim Resources

This is a repo to configure neovim/vim for competitive programming in C/C++.

Setting up YouCompleteMe:

```sh
git clone https://github.com/ycm-core/YouCompleteMe.git -C ~/.vim/bundle/
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer
```
Use NERDTree if you like, I installed it, but I hate it because in CP we don't switch much files in an hour. Or do we?
Apart from that I use UltiSnips too, whose configuration I will add when I next get time. We should not rely on snippets but when everyone is using it, it does not hurt.

Here's a little demo of my workflow...

![Vim Demo](test.gif)

Special thanks to [Jonas Devlieghere](https://github.com/JDevlieghere) whose YCM config I copied as-it-is from [here](https://jonasdevlieghere.com/a-better-youcompleteme-config/). His flags were just perfect except I added a few -Wnoerrors because the compiler was giving tonne of squiggles for some wrong programming practices us CPers overlook all the time.
