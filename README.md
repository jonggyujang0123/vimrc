#vimrc for MacOS and Ubuntu
## Features
- Basic features such as line number, tapstop, autoindent, ...
- Key Plugins 
  - [Nerd Tree (view directory tree in vim editor, Press `F3`
  - [You Complete Me (YCM) or Coc.Nvim (Auto completer)
  - [IndentLine](a)[b]
  - [python-repl]

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

# vimrc
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
# For Mac OS
If following error occurs `YouCompleteMe unavailable: requires Vim compiled with Python (3.6.0+) support`
``` 
brew install macvim
```
