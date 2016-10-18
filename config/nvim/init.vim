" Plugins
" ------------------------------------------------
call plug#begin('~/.vim/plugged')

" Base Plugins
"
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'tpope/vim-sensible'

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Look and feel
Plug 'vim-airline/vim-airline'
Plug 'chriskempson/base16-vim'

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
Plug 'suan/vim-instant-markdown', { 'for': 'markdown', 'do': 'npm -g install instant-markdown-d' }
Plug 'tpope/vim-scriptease', {'for': 'vim'}
Plug 'kana/vim-textobj-user'

" NeoVim Plugins
Plug 'neomake/neomake'
Plug 'kassio/neoterm'

" JavaScript
Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install'}

" Ruby
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'wellbredgrapefruit/tomdoc.vim'
Plug 'jc00ke/vim-tomdoc'
Plug 'noprompt/vim-yardoc'
Plug 'gorodinskiy/vim-coloresque'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'timonv/vim-cargo'
Plug 'tpope/gem-ctags'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'jgdavey/vim-blockle'

Plug 'markcornick/vim-terraform'

" Go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Swift?
Plug 'keith/swift.vim'

" Elixir
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'elixir-lang/vim-elixir'
" Plug 'thinca/vim-ref'
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }


" Elixir
Plug 'mattreduce/vim-mix'
Plug 'avdgaag/vim-phoenix'
Plug 'slashmili/alchemist.vim'

" Clojure
" Plug 'vim-scripts/paredit.vim'
" Plug 'tpope/vim-fireplace'
" Plug 'tpope/vim-salve'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-repeat'
" Plug 'guns/vim-clojure-static'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'clojure-vim/async-clj-omni'
" Plug 'kien/rainbow_parentheses.vim'

" Java
Plug 'tfnico/vim-gradle'

" YAML
Plug 'stephpy/vim-yaml'

" HTML
Plug 'mattn/emmet-vim'

" Python
"Plug 'zchee/deoplete-jedi'
Plug 'hdima/python-syntax'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

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

" General settings
" ------------------------------------------------
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
"if executable('ag')
  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
"endif

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

