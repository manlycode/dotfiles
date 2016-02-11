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
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'

NeoBundle 'majutsushi/tagbar'
NeoBundle 'benekastah/neomake'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-gem'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'kassio/neoterm'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'fntlnz/atags.vim'

NeoBundle 'tpope/vim-eunuch'     " Unix commands: :Remove :Move, etc
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tpope/vim-fugitive'

" ------------------------------------------------------------------
"  -- Color Schemes
" ------------------------------------------------------------------

NeoBundle 'chriskempson/base16-vim'
NeoBundle 'easysid/mod8.vim'

" ------------------------------------------------------------------
"  -- Color Schemes
" ------------------------------------------------------------------
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'keith/rspec.vim'
NeoBundle 'easymotion/vim-easymotion'
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

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ic
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

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



" Source init.vim after editing it
if has("autocmd")
  augroup SOURCE_VIMRC
    autocmd!
    autocmd BufWritePost ~/.config/nvim/*.vim source ~/.config/nvim/init.vim
    augroup end
endif

if has("autocmd")
  augroup SOURCE_RUBY
    autocmd!
    autocmd BufWritePost ~/.config/nvim/*.vim source ~/.config/nvim/init.vim
    augroup end
endif



let theme_bg = $BG_SHADE

if theme_bg == 'light'
  set bg=light
else
  set bg=dark
endif

let base16colorspace=256
" silent! colorscheme base16-default
silent! colorscheme base16-eighties
hi Search ctermfg=235 ctermbg=153 guifg=#747369 guibg=#393939
hi IncSearch ctermfg=235 ctermbg=157 guifg=#747369 guibg=#393939

" =======================================
" Unite
" =======================================
source ~/.config/nvim/unite.vim


" Edit Helpers
nnoremap <leader>ei :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>eu :vsplit ~/.config/nvim/unite.vim<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>


" Tabs!
if has("autocmd")
  augroup tab_defaults
    autocmd!
    autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
  augroup end
endif


" Completion
source ~/.config/nvim/completion.vim

" Term
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
" nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rt :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rT :call neoterm#test#run('current')<cr>
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

" Auto make
autocmd! BufWritePost * Neomake

" Tags
autocmd BufWritePost * call atags#generate()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
