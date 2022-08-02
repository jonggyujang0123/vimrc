"""HOME END PGUP PGDN
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
""""""""""""


syntax on
" set the colorscheme to ron. When using screen or tmux, colorscheme is changed to default. To prevent this, it should be written.

"color default

color ron

" Open new split panes to right and bottom, which feels more natural than Vim’s default:

set splitbelow

set splitright

" show line numbers

set nu

" highlight search

set hlsearch

" search as characters are entered

set incsearch

" view matching brace

set sm

" scroll offset

set scrolloff=2

" highlight cursor line

"set cursorline


" set each buffer store up to 1000 lines(<1000), maximum buffer size

" 1000kb(s1000)

set viminfo='20,<1000,s1000



" backup

set backup

"set backupdir=./.backup//

" set auto backupdir to ~/.vim/backup

function! InitBackupDir()

  if has('win32') || has('win32unix') "windows/cygwin

    let l:separator = '_'

  else

    let l:separator = '.'

  endif

  let l:parent = $HOME . '/' . l:separator . 'vim/'

  let l:backup = l:parent . 'backup/'

  let l:tmp = l:parent . 'tmp/'

  if exists('*mkdir')

    if !isdirectory(l:parent)

      call mkdir(l:parent)

    endif

    if !isdirectory(l:backup)

      call mkdir(l:backup)

    endif

    if !isdirectory(l:tmp)

      call mkdir(l:tmp)

    endif

  endif

  let l:missing_dir = 0

  if isdirectory(l:tmp)

    execute 'set backupdir=' . escape(l:backup, ' ') . '/,.'

  else

    let l:missing_dir = 1

  endif

  if isdirectory(l:backup)

    execute 'set directory=' . escape(l:tmp, ' ') . '/,.'

  else

    let l:missing_dir = 1

  endif

  if l:missing_dir

    echo 'Warning: Unable to create backup directories:' l:backup 'and' l:tmp

    echo 'Try: mkdir -p' l:backup

    echo 'and: mkdir -p' l:tmp

    set backupdir=.

    set directory=.

  endif

endfunction

call InitBackupDir()

set backspace=indent,eol,start

" set tab length to 4 spaces

set tabstop=4

set shiftwidth=4

filetype plugin indent on


autocmd FileType python,tex set expandtab



" latex settings (global values require vim-latex plugin)

autocmd FileType tex set tabstop=2

autocmd FileType tex set shiftwidth=2

autocmd FileType tex set iskeyword+=:

let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'

let g:Tex_MultipleCompileFormats='pdf, aux'



" turn off automatic new line when the text is too long in a line (e.g. SML)

autocmd FileType sml set textwidth=0 wrapmargin=0

autocmd FileType vim set textwidth=0 wrapmargin=0



set wildmenu



set foldmethod=marker



" zf folding comment set

set commentstring=%s

autocmd FileType c,cpp,java,html,php setl commentstring=//%s 

autocmd FileType sh,python setl commentstring=#%s 

autocmd FileType matlab setl commentstring=%%s

autocmd FileType sml setl commentstring=(*%s*)

"autocmd FileType html,php setl commentstring=<!--%s-->
" restore the cursor position

function! ResCur()

  if line("'\"") <= line("$")

    normal! g`"

    return 1

  endif

endfunction



augroup resCur

  autocmd!

  autocmd BufWinEnter * call ResCur()

augroup END

func! CmtOn()    "주석 on

	exe "'<,'>norm i#"

endfunc

vmap <c-c> <esc>:call CmtOn() <cr>

nmap <c-c> <esc>v:call CmtOn() <cr>

map f w





"""""""""""""""""""""""""""""""'''
""""           VIM PLUGIN        
""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" vim-repl
Plug 'sillybun/vim-repl'

let g:repl_program = {
            \   'python': 'ipython',
			\   'python-debug': 'ipdb3',
			\   'vim': 'vim -e',
            \   }
let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
let g:repl_output_copy_to_register = "t"
nnoremap <leader>r :REPLToggle<Cr>
nnoremap <leader>e :REPLSendSession<Cr>
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F9> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBS<Cr>
let g:repl_position = 3

"NERD-Tree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
map <F3> :NERDTreeToggle<cr>

""YouCompleteMe
"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer' }
"highlight Pmenu ctermfg=190 ctermbg=17 guifg=#AACCFF guibg=#222233
"highlight PmenuSel ctermfg=17 ctermbg=190 guifg=#AACCFF guibg=#222233
"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:python3_host_prog = '~/anaconda3/bin/python3'
let g:coc_global_extensions = ['coc-python', 'coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-emmet', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
highlight Pmenu ctermfg=190 ctermbg=17 guifg=#AACCFF guibg=#222233
highlight PmenuSel ctermfg=17 ctermbg=190 guifg=#AACCFF guibg=#222233
highlight CocUnusedHighlight ctermbg=NONE guibg=NONE


Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

