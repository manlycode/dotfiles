" Specify a directory for plugins
"
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')


" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deol.nvim'
Plug 'morhetz/gruvbox'
" Plug 'Shougo/neoinclude.vim'

Plug 'w0rp/ale'
Plug 'pbrisbin/vim-mkdir'

" Plug 'vim-scripts/VimIRC.vim'
" Plug 'neomake/neomake'
" Plug 'ap/vim-buftabline'
"
"
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-flagship'
Plug 'ryanoasis/vim-devicons'
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/gem-ctags'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'janko-m/vim-test'
" Plug 'wincent/ferret'
Plug 'tpope/vim-sleuth'
Plug 'chr4/nginx.vim'
Plug 'wannesm/wmgraphviz.vim'
Plug 'schickling/vim-bufonly'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/Arduino-syntax-file'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-projectionist'
" Plug 'zchee/deoplete-clang'
Plug 'keith/swift.vim'

" Plug 'Rip-Rip/clang_complete'
" Plug 'tweekmonster/deoplete-clang2'

" Look and Feel
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-scripts/syntaxm4.vim'

" Neovim
Plug 'kassio/neoterm'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'kana/vim-textobj-user'
Plug 'FooSoft/vim-argwrap'
Plug 'reedes/vim-pencil'
Plug 'itspriddle/vim-marked', {'for': 'markdown'}
Plug 'junegunn/goyo.vim', {'for': 'markdown'}

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'jgdavey/vim-blockle'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'tpope/vim-endwise'
" Plug '~/.vim/plugin/cadre'
Plug 'killphi/vim-legend'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'lmeijvogel/vim-yaml-helper'
" Vim
Plug 'tpope/vim-scriptease', {'for': 'vim'}
Plug 'ynkdir/vim-vimlparser'
Plug 'syngan/vim-vimlint'

" Go
Plug 'fatih/vim-go', {'for': 'go'}
"Plug 'farazdagi/vim-go-ide'
Plug 'benmills/vim-golang-alternate', {'for': 'go'}

" Terraform
Plug 'hashivim/vim-terraform'
" Plug 'juliosueiras/vim-terraform-completion'

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

"spec/features/org_admin/org_admin_can_edit_space_in_french_spec.rb:16 ASM
" Plug 'samsaga2/vim-z80'
Plug 'maxbane/vim-asm_ca65'
Plug '~/git/manlycode/particle-io.vim'

" Vim
Plug 'syngan/vim-vimlint'

"JSON
Plug 'vim-scripts/json-formatter.vim'

" SPICE
Plug 'ftorres16/spice.vim'

" Android
" Plug 'hsanson/vim-android'
" Plug 'udalov/kotlin-vim'
" Plug 'cespare/vim-toml'
" Plug 'ftorres16/spice.vim'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'clojure-vim/async-clj-omni'
" Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()


" General settings
" ------------------------------------------------
set iskeyword+=-
set hidden
set noswapfile
set mouse=a
set timeout
set timeoutlen=1000
set ttimeoutlen=250
set wrap
set ignorecase
set smartcase
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set smarttab
set splitright
set splitbelow
set termguicolors

"NeoVim handles ESC keys as alt+key set this to solve the problem
if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

let g:mapleader=','
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
syntax on
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*,*/nes/*,**/*.pyc,.git/*

let g:base16colorspace=256
if filereadable(expand("~/.vimrc_background"))
  let g:base16colorspace=256
  source ~/.vimrc_background
endif

" Key Bindings
nnoremap <leader>ev :tabe ~/.config/nvim/init.vim<cr>:lcd %:p:h<cr>
nnoremap <leader>m :Make<cr>
" nnoremap <C-p> :Files<cr>
" nnoremap <C-m> :FZFMru<cr>
nnoremap <C-b> :Buffers<CR>
nnoremap <leader>ot :Tags <C-r><C-w><cr>

" function! FilteredList() abort
"   echo filter(map(range(0, bufnr("$")), 'bufname(v:val)'), 'v:val !~ "term"')
" endfunction

" function! s:buflist()
"   redir => ls
"   silent ls
"   redir END
"   return filter(split(ls, '\n'), 'v:val !~ "term"')
" endfunction

" function! s:bufopen(e)
"   execute 'buffer' matchstr(a:e, '^[ 0-9]*')
" endfunction

" nnoremap <silent> <Leader>ob :call fzf#run({
" \   'source':  reverse(<sid>buflist()),
" \   'sink':    function('<sid>bufopen'),
" \   'options': '+m',
" \   'down':    len(<sid>buflist()) + 2 })<CR>

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

" Clear search highlight
highlight Search ctermbg=yellow ctermfg=black term=underline
nmap <C-l> :noh<CR>

" Comment/Uncomment
vnoremap <leader>c :Commentary<CR>
nnoremap <leader>c :Commentary<CR>

let g:airline_powerline_fonts = 1

set wildignore+=build
set wildignore+=.build
set wildignore+=*.pyc
set wildignore+=node_modules
set wildignore+=Packages


" NeoTerm
let g:neoterm_autoscroll = '1'

" let g:neoterm_default_mod = 'vertical'

let g:neoterm_size = '25'
let g:neoterm_default_mod = 'aboveleft'

nnoremap <silent> <leader>sf :TREPLSendFile<cr>
nnoremap <silent> <leader>sl :TREPLSendLine<cr>
vnoremap <silent> <leader>ss :TREPLSendSelection<cr>
nnoremap <silent> <leader>sp vap:TREPLSendSelection<cr>
nnoremap <silent> <leader>se :T exit<cr>

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
command! Trailss :T rails s
command! Trailsc :T rails c

" My Commands
command! Foreman :tabe term://foreman start -f Procfile.dev
command! Github :call jobstart('github')
command! Zeus :tabe|terminal zeus start

" command! Coverage :!open coverage/index.html

" make test commands execute using dispatch.vim
" let test#strategy = "neoterm"

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>
nmap <silent> <leader>tt :Ttoggle<CR>

nmap <silent> <leader>fw :Ack <C-r><C-w><CR>
nmap <silent> <leader>fp :Ack


" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fF <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
autocmd FileType terraform setlocal commentstring=#%s

" au BufNewFile,BufRead *.conf.erb set filetype=nginx

" let g:legend_active_auto = 0

let g:go_autodetect_gopath = 0

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NeoSnippet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

function! GitHub() abort
  te github .
endfunction

let g:neosnippet#snippets_directory='~/.snippets/neosnippets'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path='/usr/local/Cellar/llvm/9.0.0_1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/9.0.0_1'


" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  



" Files + devicons
let $FZF_DEFAULT_COMMAND = 'rg --hidden -l ""'
function! Fzf_dev()
  " let l:fzf_files_options = '--preview "rougify {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'down':    '40%' })
endfunction

" nnoremap <leader>of :call Fzf_dev()<cr>
let g:airline_powerline_fonts = 1

autocmd StdinReadPre * let s:std_in=1
highlight ALEWarning ctermbg=lightmagenta
let g:ale_linters = {'ruby': ['ruby'], 'clojure': ['clj-kondo'], 'go': ['gofmt', 'golint', 'go vet', 'gopls']}


filetype plugin indent on
augroup filetypedetect
    au BufNewFile,BufRead .iterm-workspace set ft=json
    au BufNewFile,BufRead *.asm,*.s,*.inc set ft=asm_ca65
    au BufNewFile,BufRead *.asm,*.s,*.inc setlocal shiftwidth=8 softtabstop=8 expandtab
augroup END


augroup Fastlane
    au BufNewFile,BufRead Fastfile,Appfile set ft=ruby
augroup END

let g:python_host_prog = '/Users/manlycode/.asdf/shims/python'
let g:python3_host_prog = '/Users/manlycode/.asdf/shims/python3'
let g:ruby_host_prog = '/Users/manlycode/.asdf/shims/ruby'

lua << NVIM_TREE
require'nvim-tree'.setup {
  disable_netrw       = true,
  -- hijack netrw window on startup
  hijack_netrw        = true,
  -- open the tree when running this setup function
  open_on_setup       = false,
  -- will not open on setup if the filetype is in this list
  ignore_ft_on_setup  = {},
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close          = false,
  -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  open_on_tab         = false,
  -- hijack the cursor in the tree to put it at the start of the filename
  hijack_cursor       = false,
  -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually) 
  update_cwd          = false,
  -- show lsp diagnostics in the signcolumn
  lsp_diagnostics     = false,
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    -- enables the feature
    enable      = false,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd  = false,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd  = nil,
    -- the command arguments as a list
    args = {}
  },

  view = {
    -- width of the window, can be either a number (columns) or a string in `%`
    width = 30,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- if true the tree will resize itself after opening a file
    auto_resize = true,
    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = {}
    }
  }
}
NVIM_TREE

nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus and NvimTreeResize are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`

if exists('g:vv')
  VVset fontsize=15
  VVset windowheight=100%
  VVset windowwidth=60%
  VVset windowleft=0
  VVset windowtop=0
  VVset fontfamily=HackNerdFontCompleteM-Regular,\ Menlo,\ Courier\ New
endif


" Run last command in neoterm
" Force bash run the last command (!!)
nnoremap <silent> <leader>tr :<c-u>exec printf("%sTexec !! \<lt>cr>", v:count)<cr>



" vim.g.completion_chain_complete_list = { default = {{ complete_items = { "lsp", "path", "buffers", "snippet" } },{ mode = "<c-p>" },{ mode = "<c-n>" },},TelescopePrompt = {},frecency = {}}

