#vimrc for MacOS and Ubuntu
## Features
- Basic features such as line number, tapstop, autoindent, ...
- Key Plugins 
  - [Nerd Tree](https://github.com/preservim/nerdtree) (view directory tree in vim editor, Press `F3`
  - [You Complete Me (YCM)](https://github.com/ycm-core/YouCompleteMe) or [Coc.Nvim (Auto completer)](https://github.com/neoclide/coc.nvim)
  - [IndentLine](https://github.com/Yggdroot/indentLine)
  - [python-repl](https://github.com/sillybun/vim-repl)

# Install

## Clone Repo
```
git clone https://github.com/jonggyujang0123/vimrc.git
mv vimrc/.vimrc .vimrc # if Ubuntu
mv vimrc/.vimrc_mac .vimrc # if macOS
rm -r -f vimrc
```

## vim-plug 

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## requirements
vimrc configuration
`important !` deactivate conda

- For ubuntu:
```
sudo apt install cmake
curl -sL install-node.now.sh/lts | sudo bash
```
- For MacOs
```
brew install cmake
curl -sL install-node.now.sh/lts | sudo bash
```

- Common:
```
python -m pip install ipdb
```


In vim normal mode, run
```
:PlugInstall
```

## Finish Installation
In vim normal mode, run
```
:PlugInstall
```
## For Mac OS
If following error occurs `YouCompleteMe unavailable: requires Vim compiled with Python (3.6.0+) support`
``` 
brew install macvim
```
