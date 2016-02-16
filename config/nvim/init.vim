"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/Users/manlycode/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/manlycode/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-sensible' " This must be first!

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }

NeoBundle 'tpope/vim-eunuch'     " Unix commands: :Remove :Move, etc
NeoBundle 'mattn/webapi-vim'

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-sleuth'     " automatically adjust shiftwidth, tabstop, etc. based on filetype
NeoBundle 'schickling/vim-bufonly'
NeoBundle 'tpope/vim-surround'   " Manipulate delimiters, quotes, etc.

NeoBundle 'vim-scripts/Align'
NeoBundle 'easymotion/vim-easymotion'

NeoBundle 'chriskempson/base16-vim'
NeoBundle 'easysid/mod8.vim'

" ------------------------------------------------------------------
" -- Languages/Tools
" ------------------------------------------------------------------
" NeoBundle 'scrooloose/syntastic'

" ------------------------------------------------------------------
" --- CoffeeScript
" ------------------------------------------------------------------
NeoBundle 'kchmck/vim-coffee-script'

" ------------------------------------------------------------------
" --- Elixir
" ------------------------------------------------------------------
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'mattreduce/vim-mix'

" ------------------------------------------------------------------
" --- Git
" ------------------------------------------------------------------
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-scripts/prettyprint.vim'
NeoBundle 'mattn/gist-vim'

" ------------------------------------------------------------------
" --- JavaScript
" ------------------------------------------------------------------
NeoBundle 'pangloss/vim-javascript'

" ------------------------------------------------------------------
" --- Markdown
" ------------------------------------------------------------------
NeoBundle 'tpope/vim-markdown'
NeoBundle 'greyblake/vim-preview'

" ------------------------------------------------------------------
" --- Ruby
" ------------------------------------------------------------------
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'keith/rspec.vim'

" ------------------------------------------------------------------
" --- Textile
" ------------------------------------------------------------------
NeoBundle 'timcharper/textile.vim'

" ------------------------------------------------------------------
" --- VimScript
" ------------------------------------------------------------------
NeoBundle 'tpope/vim-scriptease' " plugin for making plugins

" ------------------------------------------------------------------
" --- Terraform
" ------------------------------------------------------------------
NeoBundle 'markcornick/vim-terraform'

" ------------------------------------------------------------------
" --- SCSS
" ------------------------------------------------------------------
NeoBundle 'gorodinskiy/vim-coloresque'

NeoBundle 'vim-scripts/dbext.vim'
NeoBundle "tfnico/vim-gradle"

NeoBundle "guns/vim-clojure-static"
NeoBundle "tpope/vim-fireplace"
NeoBundle "reedes/vim-wordy"

NeoBundle 'benekastah/neomake'
NeoBundle 'kassio/neoterm'
NeoBundle 'tpope/gem-ctags'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-rake'

" ------------------------------------------------------------------
"  -- Color Schemes
" ------------------------------------------------------------------
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set shell=/bin/zsh
set nottimeout

set omnifunc=syntaxcomplete#Complete
syntax enable
set number

let mapleader=","
set bs=indent,eol,start
filetype plugin indent on
set clipboard=unnamed

" Personal preferences not set by sensible.vim
set history=5000
set showcmd
set nojoinspaces

" Search
set ignorecase
set hlsearch

" set listchars=tab:▸\ ,eol:¬
set foldlevelstart=99
set noswapfile
if has('mouse')
  set mouse=nv
endif

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*


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

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>ep :vsplit ~/.bundles.vim<cr>

" Source .vimrc after editing it
if has("autocmd")
  augroup SOURCE_VIMRC
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
  augroup end
endif

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" Tabs!
if has("autocmd")
  augroup tab_defaults
    autocmd!
    autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
  augroup end
endif

" ------------------------------------------------------------------
" Colorshceme
" ------------------------------------------------------------------

let theme_bg = $BG_SHADE

if theme_bg == 'light'
  set bg=light
else
  set bg=dark
endif

let base16colorspace=256
" silent! colorscheme base16-default
silent! colorscheme base16-eighties
hi Search guibg=darkgray guifg=wheat

" ------------------------------------------------------------------
" Shougo/neosnippet
" ------------------------------------------------------------------


" ------------------------------------------------------------------
" --- Textile
" ------------------------------------------------------------------

" ------------------------------------------------------------------
" --- VimScript
" ------------------------------------------------------------------


" ------------------------------------------------------------------
"  Plugin Configurations
" ------------------------------------------------------------------

" ------------------------------------------------------------------
"  - jgdavey/vim-turbux
"  ------------------------------------------------------------------
let g:turbux_command_prefix = 'bundle exec' " default: (empty)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" ------------------------------------------------------------------
" Custom User Commands
" ------------------------------------------------------------------
command! Github :T github

" ------------------------------------------------------------------
"  - kien/ctrlp.vim
" ------------------------------------------------------------------
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
nnoremap <leader>b :CtrlPBuffer<CR>

" ------------------------------------------------------------------
" -- Languages
" ------------------------------------------------------------------

" ------------------------------------------------------------------
" --- CoffeeScript
" ------------------------------------------------------------------

" ------------------------------------------------------------------
" --- Git
" ------------------------------------------------------------------



" ------------------------------------------------------------------
" --- HTML
" ------------------------------------------------------------------
if has("autocmd")
  augroup html_defaults
    autocmd!
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
  augroup END
endif

" ------------------------------------------------------------------
" --- JavaScript
" ------------------------------------------------------------------
if has("autocmd")
  augroup javascript_defaults
    autocmd!
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType json setlocal shiftwidth=2 tabstop=2
  augroup END
endif

" ------------------------------------------------------------------
" --- Groovy
" ------------------------------------------------------------------
if has("autocmd")
  augroup groovy_defaults
    autocmd!
    autocmd FileType groovy setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd FileType gradle setlocal shiftwidth=2 tabstop=2 expandtab
  augroup END
endif

" ------------------------------------------------------------------
" --- Markdown
" ------------------------------------------------------------------
" Writing defaults (Markdown textile)
if has("autocmd")
  augroup markdown_defaults
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal textwidth=80
    autocmd BufRead,BufNewFile *.md set spell
    autocmd BufRead,BufNewFile *.textile setlocal textwidth=80
    autocmd BufRead,BufNewFile *.textile set spell
  augroup end
endif

" ------------------------------------------------------------------
" --- Terraform
" ------------------------------------------------------------------
if has("autocmd")
  augroup terraform_defaults
    autocmd!
    autocmd FileType terraform setlocal shiftwidth=2 tabstop=2
  augroup end
end


" ------------------------------------------------------------------
" --- Textile
" ------------------------------------------------------------------
if has("autocmd")
  augroup textile_defaults
    autocmd!
    autocmd BufRead,BufNewFile *.textile setlocal textwidth=80
    autocmd BufRead,BufNewFile *.textile set spell
  augroup end
endif

" ------------------------------------------------------------------
" --- Ruby
" ------------------------------------------------------------------
if has("autocmd")
  augroup ruby_defaults
    autocmd!
    autocmd BufNewFile,BufRead Fastfile set filetype=ruby
    autocmd FileType ruby,eruby setl omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby setlocal shiftwidth=2 tabstop=2

    let g:rubycomplete_rails = 1
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_classes_in_global = 1
  augroup end
end

" ------------------------------------------------------------------
" --- Elixir
" ------------------------------------------------------------------
if has("autocmd")
  augroup elixir_defaults
    autocmd!
    autocmd FileType elixir setlocal shiftwidth=2 tabstop=2
  augroup end
end

" ------------------------------------------------------------------
" --- SQL
" ------------------------------------------------------------------
if has("autocmd")
  augroup sql_defaults
    autocmd!
    autocmd FileType sql setlocal shiftwidth=2 tabstop=2
  augroup END
endif

" ------------------------------------------------------------------
" --- YAML
" ------------------------------------------------------------------
if has("autocmd")
  augroup yaml_defaults
    autocmd!
    autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
  augroup end
end

" ------------------------------------------------------------------
" --- SCSS
" ------------------------------------------------------------------
if has("autocmd")
  augroup scss_defaults
    autocmd!
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2
  augroup END
endif


function! VarToLet()
  s/\v^(\W+)(\w+)/\1let(:\2)/g
  s/\v\= (\S+)$/{ \1 }/g
endfunction

function! LetToVar()
  s/\vlet!*\(\:(\S+)\) \{ (\S+) }/\1 = \2
endfunction

" ------------------------------------------------------------------
" --- VIM
" ------------------------------------------------------------------
if has("autocmd")
  augroup vim_defaults
    autocmd!
    autocmd FileType vim setlocal shiftwidth=2 tabstop=2
  augroup END
endif

" ------------------------------------------------------------------
" --- NerdTree
" ------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>n :NERDTreeToggle<CR>


" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Neoterm
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
"nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rT :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rt :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>


vnoremap / :Commentary<cr>

" Neomake
let g:neomake_warning_sign={'text': '⚠️', 'texthl': ''}
let g:neomake_error_sign={'text': '❌', 'texthl': ''}
autocmd! BufWritePost * Neomake


" Terminal
if has("nvim")
  " Allow escape or Ctrl-[ to switch to navigation mode in the terminal
  :tnoremap <Esc> <C-\><C-n>
  :tnoremap <C-[> <C-\><C-n>
endif
