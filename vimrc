"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/manlycode/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/manlycode/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }

" NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'vim-scripts/Align'
" NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'majutsushi/tagbar'


NeoBundle 'rust-lang/rust.vim'
NeoBundle 'phildawes/racer', {
      \   'build' : {
      \     'mac': 'cargo build --release',
      \     'unix': 'cargo build --release',
      \   }
      \ }

NeoBundle 'rhysd/rust-doc.vim'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

NeoBundle 'cespare/vim-toml'

NeoBundle 'tpope/vim-vinegar'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'myhere/vim-nodejs-complete'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-scriptease'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-tbone'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-projectile'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'nelstrom/vim-docopen'
NeoBundle 'vim-scripts/prettyprint.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'nelstrom/vim-textobj-rubyblock'

" Ruby enhancements
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'jgdavey/tslime.vim'
NeoBundle 'jgdavey/vim-turbux'
NeoBundle 'slim-template/vim-slim'

" Markdown
NeoBundle 'tpope/vim-markdown'
NeoBundle 'nelstrom/vim-markdown-folding'
"NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'greyblake/vim-preview'

" Textile
NeoBundle 'timcharper/textile.vim'

" Colorschemes
NeoBundle 'chriskempson/base16-vim'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'fatih/vim-go'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
set hlsearch
set ic

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"

set omnifunc=syntaxcomplete#Complete
syntax enable
filetype plugin indent on


let base16colorspace=256
let mapleader=","
set bs=indent,eol,start
filetype plugin indent on
set clipboard=unnamed

" Personal preferences not set by sensible.vim
set history=5000
set showcmd
set nojoinspaces

" set listchars=tab:▸\ ,eol:¬
set foldlevelstart=99
set noswapfile
if has('mouse')
  set mouse=nv
endif

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*

silent! colorscheme base16-default
let bg_shade=$BG_SHADE

if bg_shade == 'light'
  set bg=light
else
  set bg=dark
endif

" Plugin configuration {{{1
" netrw.vim {{{2
let g:netrw_banner=0
" Don't show undo files in the explorer
let g:netrw_list_hide='\.un\~$'
" Vim-ruby {{{2
" let ruby_fold=1
" Markdown {{{2
let g:markdown_fenced_languages = ['ruby', 'javascript']
" FIXME:
" Markdown files have foldmethod=syntax when both of these options are set:
" let ruby_fold=1
" let g:markdown_fenced_languages = ['ruby', 'javascript']
" to debug, run :verbose set foldmethod?

" Ctlr-P
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
nnoremap <leader>b :CtrlPBuffer<CR>

" Mappings {{{1
" Override defaults {{{2
nnoremap Q <Nop>

" File opening {{{2
cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'

" Fix the & command in normal+visual modes {{{2
nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

" Visual line repeat {{{2
xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>ep :vsplit ~/.bundles.vim<cr>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
  " let g:unite_source_grep_command = 'ag'
  " let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  " let g:unite_source_grep_recursive_opt = ''
endif

set number

command! Github :VimProcBang github

" Syntastic
let g:syntastic_ruby_rubocop_exec="~/vin/rubocop.sh"

" Source .vimrc after editing it
if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Writing defaults (Markdown textile)
if has("autocmd")
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
  autocmd BufRead,BufNewFile *.md set spell
  autocmd BufRead,BufNewFile *.textile setlocal textwidth=80
  autocmd BufRead,BufNewFile *.textile set spell
endif


" Tabs!
if has("autocmd")
  autocmd FileType html setlocal shiftwidth=4 tabstop=4
  autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
  autocmd FileType json setlocal shiftwidth=2 tabstop=2
  autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
  autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
  autocmd FileType sql setlocal shiftwidth=2 tabstop=2
endif

" Completions
if has("autocmd")
  " Ruby
  autocmd FileType ruby,eruby setl omnifunc=rubycomplete#Complete
  let g:rubycomplete_rails = 1
  let g:rubycomplete_buffer_loading = 1
  let g:rubycomplete_classes_in_global = 1
endif

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" Syntastic
let g:syntastic_javascript_checkers = ['jsxhint']

" Rust
set hidden

"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" vim-turbux
let g:turbux_command_prefix = 'bundle exec' " default: (empty)
