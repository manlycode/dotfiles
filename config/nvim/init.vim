" Plugins
" ------------------------------------------------
call plug#begin('~/.vim/plugged')

" Base Plugins
"
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'majutsushi/tagbar'

" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-sensible'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-scriptease'
" Themes
Plug 'chriskempson/base16-vim'

" NeoVim Plugins
Plug 'benekastah/neomake'
Plug 'kassio/neoterm'

" JavaScript
Plug 'ternjs/tern_for_vim', { 'do': 'npm install'}

" Ruby
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'wellbredgrapefruit/tomdoc.vim'
Plug 'jc00ke/vim-tomdoc'
Plug 'noprompt/vim-yardoc'
Plug 'gorodinskiy/vim-coloresque'
Plug 'markcornick/vim-terraform'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'timonv/vim-cargo'
Plug 'tpope/gem-ctags'

" Go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Add plugins to &runtimepath
call plug#end()
" ------------------------------------------------

autocmd! BufWritePost ~/.config/nvim/*.vim source ~/.config/nvim/init.vim

" General settings
" ------------------------------------------------
let mapleader=','
set number
set showcmd
set shell=/bin/zsh
set nojoinspaces
set ignorecase
set autowrite
set expandtab
" set list "show those nasty TABs

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*,*/nes/*

" Key Bindings
nnoremap <leader>ev :tabe ~/.config/nvim/init.vim<cr>:lcd %:p:h<cr>:NERDTreeToggle<cr>

" Set the theme based on the terminal theme
let base16colorspace=256
let theme_bg = $BG_SHADE

if theme_bg == 'light'
  set bg=light
else
  set bg=dark
endif

colorscheme base16-default

" Other files
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/languages.vim

set clipboard=unnamed
