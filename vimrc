scriptencoding utf-8

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'maxbrunsfeld/vim-emacs-bindings'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'janko-m/vim-test'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-projectionist'
Plug 'dkprice/vim-easygrep'
Plug 'skywind3000/asyncrun.vim'
Plug 'powerman/vim-plugin-AnsiEsc'

" Editing Text
Plug 'tpope/vim-commentary'
Plug 'FooSoft/vim-argwrap'
Plug 'reedes/vim-pencil'
Plug 'itspriddle/vim-marked'
Plug 'junegunn/goyo.vim'

" Look and feel
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'manlycode/vim-snippets'

" git
Plug 'tpope/vim-fugitive'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Markdown
Plug 'plasticboy/vim-markdown'

" Vim
Plug 'tpope/vim-scriptease', {'for': 'vim'}
Plug 'ynkdir/vim-vimlparser'
Plug 'syngan/vim-vimlint'

" Python
" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
Plug 'davidhalter/jedi-vim', {'for': 'python'} | Plug 'lambdalisue/vim-pyenv', {'for': 'python'}

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'gorodinskiy/vim-coloresque', {'for': 'css'}
Plug 'tpope/gem-ctags'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'jgdavey/vim-blockle'
Plug 'vim-ruby/vim-ruby'


" Hashicorp
Plug 'markcornick/vim-terraform'

" YAML
Plug 'stephpy/vim-yaml'

call plug#end()

set wrap
set ignorecase
set smartcase
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set smarttab

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

set shell=$SHELL

runtime! plugin/sensible.vim
set number
let g:mapleader=','
set ttyfast
set mouse=a
set ttymouse=xterm2

autocmd! BufWritePost ~/.vimrc source ~/.vimrc

let g:airline_powerline_fonts = 1
let g:airline#extensions#virtualenv#enabled = 0


" Change cursor shape between insert and normal mode in iTerm2.app
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set wildignore+=build
set wildignore+=*.pyc
set wildignore+=node_modules

set noswapfile
set background=light
set hlsearch
set clipboard=unnamed
set tags=~/mytags
hi Search cterm=NONE ctermfg=white ctermbg=gray

nnoremap <leader>ev :tabe ~/.vimrc<CR>

" make test commands execute using dispatch.vim
let g:test#strategy = 'asyncrun'
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" let g:test#ruby#rspec#options = '--color'


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'

let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsListSnippets='<s-tab>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit='vertical'

let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

nmap <leader>f :Grep 
nmap <leader>F :Grep <C-r><C-w>

let g:jedi#show_call_signatures = '2'

augroup Ruby
  autocmd!
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
augroup END

" augroup Python
"   autocmd FileType python setlocal omnifunc=jedi#completions
"   let g:jedi#completions_enabled = 0
"   let g:jedi#auto_vim_configuration = 0
"   let g:jedi#smart_auto_mappings = 0
" augroup END

let g:ctrlp_show_hidden = 1

let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

" Netrw
" Make Netrw behave line Nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" Quickly toggle quickfix
:noremap <leader>q :call asyncrun#quickfix_toggle(8)<cr>
:noremap <leader>d :Vexplore<cr>

" Map alt keys to window motions
" Alt + j
nnoremap ∆ <c-w>j
" Alt + k
nnoremap ∆ <c-w>k
" Alt + h
nnoremap ˙ <c-w>h
" Alt + l
nnoremap ¬ <c-w>l

nnoremap <c-_> :Commentary<CR>
vnoremap <c-_> :Commentary<CR>

let g:EasyGrepFilesToExclude=".svn,.git,tags"
let g:EasyGrepRecursive=1
let g:EasyGrepCommand=1
let g:EasyGrepRoot="repository"
set grepprg=ag\ --nogroup\ --nocolor\ --column
set grepformat=%f:%l:%c%m

if filereadable(expand('~/.vimrc_background'))
  let g:base16colorspace=256
  source ~/.vimrc_background
endif



" Markdown
let g:vim_markdown_folding_disabled = 1
let g:marked_app = 'Marked 2'
let g:pencil#wrapModeDefault = 'soft'
let g:pencil#conceallevel = 0

augroup Markdown
  autocmd!

  function! SetMarkdownOptions()
    set spell spelllang=en_us
    Goyo
  endfunction

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd Filetype markdown call SetMarkdownOptions()
augroup END

augroup Pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init()
  autocmd FileType txt call pencil#init()
augroup END
