" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


Plug 'chriskempson/base16-vim'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'kassio/neoterm'

" Initialize plugin system
call plug#end()


" General settings
" ------------------------------------------------
set noswapfile
set mouse=a
set timeout
set timeoutlen=750
set ttimeoutlen=250

"NeoVim handles ESC keys as alt+key set this to solve the problem
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

let mapleader=','
set number
set showcmd
set shell=/bin/zsh
set nojoinspaces
set ignorecase
set autowrite
set expandtab
" set list "show those nasty TABs

" Reload config on write
autocmd! BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175


filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*,*/nes/*,**/*.pyc,.git/*


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Key Bindings
nnoremap <leader>ev :tabe ~/.config/nvim/init.vim<cr>:lcd %:p:h<cr>

" Other files
" source ~/.config/nvim/plugins.vim
" source ~/.config/nvim/languages.vim
" source ~/.config/nvim/commands.vim

set clipboard=unnamed


" Custom movement between buffers
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let g:terminal_scrollback_buffer_size = 2147483646

let g:token="113eda4ab465dc9f416ea955d36738d7"
let g:project_id="792199"

nmap <silent> <leader>d <Plug>DashSearch


" Clear search highlight
nmap <C-l> :noh<CR>

" Comment/Uncomment
vnoremap <leader>c :Commentary<CR>
vnoremap <leader>c :Commentary<CR>
let g:python_host_prog = '/Users/manlycode/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/manlycode/.pyenv/versions/neovim3/bin/python'
