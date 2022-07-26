# Clone Repo
```
git clone https://github.com/jonggyujang0123/vimrc.git
mv vimrc/.vimrc .vimrc
rm -r -f vimrc
```

# vimrc
vimrc configuration

## vim-plug 

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## YouCompleteMe
`important !` deactivate conda

Then, install it.
```
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
```

## For vim-repl

1. Install ipdb module
```
python -m pip install ipdb
```

## Finish Installation
In vim normal mode, run
```
:PlugInstall
```
