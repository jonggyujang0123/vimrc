# Clone Repo
```
git clone https://github.com/jonggyujang0123/vimrc.git
mv vimrc/.vimrc .vimrc
rm -r -f vimrc
```


# vimrc
vimrc configuration
`important !` deactivate conda

- For ubuntu:
```
sudo apt install cmake
```
- For MacOs
```
brew install cmake
```

- Common:
```
python -m pip install ipdb
```

## vim-plug 

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
