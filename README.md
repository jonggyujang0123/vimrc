# vimrc
vimrc configuration

## Install coc.nvim
```
$ curl -sL install-node.now.sh/lts | sudo bash
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

:source %
:PlugInsta
```
In `vim` normal mode, open coc configuration by running `:CocConfig`.
```
let g:python3_host_prog = '~/anaconda3/bin/python'
let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-emmet', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
```
To finish the installation, CocInstall coc-python
