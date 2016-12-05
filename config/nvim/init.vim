" Plugins
" ------------------------------------------------
call plug#begin('~/.vim/plugged')

" Base Plugins
"
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'FooSoft/vim-argwrap'
" Plug 'wincent/ferret'
Plug 'mhinz/vim-grepper'

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Look and feel
Plug 'vim-airline/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'gorodinskiy/vim-coloresque'

" Tags
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-eunuch'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-vinegar'

Plug 'rizzatti/dash.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-scriptease', {'for': 'vim'}
Plug 'kana/vim-textobj-user'
Plug 'wfleming/vim-codeclimate'

" NeoVim Plugins
Plug 'neomake/neomake'
Plug 'kassio/neoterm'

" JavaScript
Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install'}

" Ruby
Plug 'tpope/vim-projectionist'

Plug 'tpope/vim-bundler',             { 'for': 'ruby'}
Plug 'tpope/vim-endwise',             { 'for': 'ruby'}
Plug 'tpope/vim-rake',                { 'for': 'ruby'}
Plug 'vim-ruby/vim-ruby',             { 'for': 'ruby'}
Plug 'tpope/vim-rails',               { 'for': 'ruby'}
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby'}
Plug 'ecomba/vim-ruby-refactoring',    { 'for': 'ruby'}
Plug 'jgdavey/vim-blockle',            { 'for': 'ruby'}

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust'}
Plug 'cespare/vim-toml',   { 'for': 'rust'}
Plug 'timonv/vim-cargo',   { 'for': 'rust'}

Plug 'tpope/gem-ctags'
" Plug 'markcornick/vim-terraform'
Plug 'hashivim/vim-terraform'

" Go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Elixir
Plug 'powerman/vim-plugin-AnsiEsc', { 'for': 'elixir'}
Plug 'elixir-lang/vim-elixir',      { 'for': 'elixir'}
Plug 'mattreduce/vim-mix',          { 'for': 'elixir'}
Plug 'avdgaag/vim-phoenix',         { 'for': 'elixir'}
Plug 'slashmili/alchemist.vim',     { 'for': 'elixir'}
" Plug 'awetzel/elixir.nvim',       { 'do': 'yes \| ./install.sh', 'for': 'elixir'}

" Clojure
Plug 'vim-scripts/paredit.vim',      { 'for': 'clojure'}
Plug 'tpope/vim-fireplace',          { 'for': 'clojure'}
Plug 'tpope/vim-salve',              { 'for': 'clojure'}
Plug 'guns/vim-sexp',                { 'for': 'clojure'}
Plug 'tpope/vim-repeat',             { 'for': 'clojure'}
Plug 'guns/vim-clojure-static',      { 'for': 'clojure'}
Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure'}
Plug 'clojure-vim/async-clj-omni',   { 'for': 'clojure'}
Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure'}

" Java
Plug 'tfnico/vim-gradle'

" YAML
Plug 'stephpy/vim-yaml'

" HTML
Plug 'mattn/emmet-vim'

" Python
"Plug 'zchee/deoplete-jedi'
Plug 'hdima/python-syntax'


" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
Plug 'lambdalisue/vim-pyenv', {'for': 'python'}



" Add plugins to &runtimepath
call plug#end()
" ------------------------------------------------

autocmd! BufWritePost ~/.config/nvim/*.vim source ~/.config/nvim/init.vim

" let g:python_host_prog="/Users/manlycode/.pyenv/versions/2.7.9/envs/neovim2/bin/python"
" let g:python3_host_prog="/Users/manlycode/.pyenv/versions/3.5.2/envs/neovim3/bin/python3"


" General settings
" ------------------------------------------------
set timeout
set timeoutlen=750
set ttimeoutlen=250

"NeoVim handles ESC keys as alt+key set this to solve the problem
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
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

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1


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
nnoremap <leader>ev :tabe ~/.config/nvim/init.vim<cr>:lcd %:p:h<cr>:NERDTreeToggle<cr><C-w>l

" Other files
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/languages.vim
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
