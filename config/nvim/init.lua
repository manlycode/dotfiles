local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {

{"neovim/nvim-lspconfig"},
{"hrsh7th/cmp-nvim-lsp"},
{"hrsh7th/cmp-buffer"},
{"hrsh7th/cmp-path"},
{"hrsh7th/nvim-cmp"},
{"hrsh7th/cmp-vsnip"},
{"hrsh7th/vim-vsnip"},
{"hrsh7th/vim-vsnip-integ"},

{"natecraddock/workspaces.nvim"},
{"morhetz/gruvbox"},
{"sainnhe/gruvbox-material"},
{"sainnhe/gruvbox-material"},
{"marko-cerovac/material.nvim"},
{"w0rp/ale"},
{"pbrisbin/vim-mkdir"},
{"neomake/neomake"},
{"nvim-lua/plenary.nvim"},
{"nvim-telescope/telescope.nvim"},
{"MunifTanjim/nui.nvim"},
{"stevearc/oil.nvim"},

{"kyazdani42/nvim-web-devicons"},
-- -- {"nvim-tree/nvim-web-devicons"},
{"kyazdani42/nvim-tree.lua"},
{"tpope/vim-flagship"},
{"ryanoasis/vim-devicons"},
{"embear/vim-localvimrc"},
{"tpope/vim-vinegar"},
{"tpope/vim-eunuch"},
{"tpope/gem-ctags"},
{"tpope/vim-fugitive"},
{"tpope/vim-rhubarb"},
{"janko-m/vim-test"},

{"tpope/vim-sleuth"},
{"chr4/nginx.vim"},
{"wannesm/wmgraphviz.vim"},
{"schickling/vim-bufonly"},
{"tpope/vim-dispatch"},
{"radenling/vim-dispatch-neovim"},
{"tpope/vim-repeat"},
{"vim-scripts/Arduino-syntax-file"},
{"junegunn/vim-peekaboo"},
{"tpope/vim-projectionist"},
-- {"zchee/deoplete-clang"},
{"keith/swift.vim"},
{"wojciech-kulik/xcodebuild.nvim"},
{"nvim-treesitter/nvim-treesitter"},

{"powerman/vim-plugin-AnsiEsc"},
-- {"Rip-Rip/clang_complete"},
-- {"tweekmonster/deoplete-clang2"},

-- Look and Feel
-- {"chriskempson/base16-vim"},
-- ColorSchemes
{"tinted-theming/tinted-vim"},
{"tiagovla/tokyodark.nvim"},
-- {"vim-airline/vim-airline"},
-- {"vim-airline/vim-airline-themes"},

{"vim-scripts/syntaxm4.vim"},
{"nvim-lualine/lualine.nvim"},
{"nanozuki/tabby.nvim"},
{"mawkler/modicator.nvim"},

-- Neovim
{"kassio/neoterm"},

-- Editing
{"tpope/vim-surround"},
{"tpope/vim-abolish"},
{"junegunn/vim-easy-align"},
{"tpope/vim-commentary"},
{"easymotion/vim-easymotion"},
{"kana/vim-textobj-user"},
{"FooSoft/vim-argwrap"},
{"reedes/vim-pencil"},
-- Plug('itspriddle/vim-marked', {['for'] =  'markdown'})
-- Plug('junegunn/goyo.vim', {['for'] =  'markdown'})

-- Ruby
{"vim-ruby/vim-ruby"},
{"tpope/vim-bundler"},
{"tpope/vim-rake"},
{"tpope/vim-rails"},
{"tpope/vim-endwise"},
{"jgdavey/vim-blockle"},
{"ck3g/vim-change-hash-syntax"},
{"tpope/vim-endwise"},
-- {"~/.vim/plugin/cadre"},
{"killphi/vim-legend"},
{"nelstrom/vim-textobj-rubyblock"},
{"lmeijvogel/vim-yaml-helper"},
-- Vim
-- Plug('tpope/vim-scriptease', {['for'] =  'vim'})
{"ynkdir/vim-vimlparser"},
{"syngan/vim-vimlint"},

-- Go

-- Plug('fatih/vim-go', { ['do'] =  ':GoUpdateBinaries' })
-- {"farazdagi/vim-go-ide"},
-- {"neovim/nvim-lspconfig"},
-- Plug('ray-x/guihua.lua', {['do'] =  'cd lua/fzy && make' })
-- {"ray-x/navigator.lua"},
-- {"mfussenegger/nvim-dap"},
-- {"rcarriga/nvim-dap-ui"},
-- {"theHamsta/nvim-dap-virtual-text"},
-- Plug('nvim-treesitter/nvim-treesitter', {['do'] =  ':TSUpdate'})
{"ray-x/go.nvim"},

-- Plug('benmills/vim-golang-alternate', {['for'] =  'go'})
-- {"janko-m/vim-test"},

-- Terraform
{"hashivim/vim-terraform"},
-- {"juliosueiras/vim-terraform-completion"},

-- Elixir
-- {"elixir-editors/vim-elixir"},
-- {"slashmili/alchemist.vim"},

-- {"samsaga2/vim-z80"},
-- {"maxbane/vim-asm_ca65"},
-- {"EmmaEwert/vim-rgbds"},
-- {"gryf/kickass-syntax-vim"},
{"~/git/manlycode/particle-io.vim"},


-- JSON
{"vim-scripts/json-formatter.vim"},

-- SPICE
{"ftorres16/spice.vim"},

-- Android
-- {"hsanson/vim-android"},
-- {"udalov/kotlin-vim"},
-- {"cespare/vim-toml"},
-- {"ftorres16/spice.vim"},

-- Clojure
{"guns/vim-clojure-static"},
{"tpope/vim-classpath"},
{"tpope/vim-fireplace"},
{"tpope/vim-salve"},
{"clojure-vim/async-clj-omni"},
-- {"jiangmiao/auto-pairs"},
{"MattesGroeger/vim-bookmarks"},

{"RaafatTurki/hex.nvim"},

  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Specify a directory for plugins
-- - For Neovim: ~/.local/share/nvim/plugged
-- - Avoid using standard Vim directory names like 'plugin'
local vim = vim
local Plug = vim.fn['plug#']

--
vim.cmd([[
function! TabbyTabline() abort
    return luaeval("require'tabby'.update()")
endfunction
function! TabbyRenderTabline() abort
    return luaeval("require'tabby.tabline'.render()")
endfunction
]])


if vim.g.neovide then
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-full"
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-normal"
  vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-slight"
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-none"
  vim.opt.linespace = 4
  -- vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 15
  vim.g.neovide_padding_left = 15
  vim.g.neovide_refresh_rate = 120
end

-- General settings
-- ------------------------------------------------
vim.cmd([[
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

set autoindent
set smartindent
set smarttab
set splitright
set splitbelow
]])

-- NeoVim handles ESC keys as alt+key set this to solve the problem
vim.cmd([[
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
]])

-- set list "show those nasty TABs

-- Reload config on write
vim.cmd([[
autocmd! BufWritePost ~/.config/nvim/init.lua source ~/.config/nvim/init.lua

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175


filetype plugin on
filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*,*/nes/*,**/*.pyc,.git/*

set termguicolors
let g:tinted_colorspace=256
if filereadable(expand("~/.vimrc_background"))
  let g:tinted_colorspace=256
  source ~/.vimrc_background
endif
]])
-- Key Bindings
vim.cmd([[
nnoremap <leader>ev :tabe ~/.config/nvim/init.lua<cr>:lcd %:p:h<cr>
nnoremap <leader>m :Make<cr>
nnoremap <C-b> :Buffers<CR>
nnoremap <leader>ot :Tags <C-r><C-w><cr>
nnoremap <leader>r :NvimTreeRefresh <CR>
]])

-- Other files
vim.cmd([[
source ~/.config/nvim/languages.vim
set clipboard=unnamed
]])


function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end


-- Custom movement between buffers
vim.cmd([[
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]])

vim.cmd([[
let g:terminal_scrollback_buffer_size = 2147483646
]])

-- Clear search highlight
vim.cmd([[
highlight Search ctermbg=yellow ctermfg=black term=underline
nmap <C-l> :noh<CR>
]])

-- Comment/Uncomment
vim.cmd([[
vnoremap <leader>c :Commentary<CR>
nnoremap <leader>c :Commentary<CR>
]])

vim.cmd([[
let g:airline_powerline_fonts = 1
set wildignore+=build
set wildignore+=.build
set wildignore+=*.pyc
set wildignore+=node_modules
set wildignore+=Packages
]])


-- NeoTerm
vim.cmd([[
let g:neoterm_autoscroll = '1'
]])

-- let g:neoterm_default_mod = 'vertical'
vim.cmd([[
let g:neoterm_size = '25'
let g:neoterm_default_mod = 'aboveleft'

nnoremap <silent> <leader>sf :TREPLSendFile<cr>
nnoremap <silent> <leader>sl :TREPLSendLine<cr>
vnoremap <silent> <leader>ss :TREPLSendSelection<cr>
nnoremap <silent> <leader>sp vap:TREPLSendSelection<cr>
nnoremap <silent> <leader>se :T exit<cr>
]])
-- Useful maps
-- hide/close/clear/kill terminal
vim.cmd([[
nnoremap <silent> ,th :call neoterm#close()<cr>
nnoremap <silent> ,tl :call neoterm#clear()<cr>
nnoremap <silent> ,tc :call neoterm#kill()<cr>
]])

-- Rails commands
vim.cmd([[
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate
command! Trailss :T rails s
command! Trailsc :T rails c
]])

-- My Commands
vim.cmd([[
command! Foreman :tabe term://foreman start -f Procfile.dev
command! Github :call jobstart('github')
command! Zeus :tabe|terminal zeus start
]])

-- command! Coverage :!open coverage/index.html
-- make test commands execute using dispatch.vim
vim.cmd([[
let test#strategy = "neoterm"
let test#neovim#term_position = "vert"
]])

-- these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
vim.cmd([[
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>
nmap <silent> <leader>tt :Ttoggle<CR>
]])

-- Find files using Telescope command-line sugar.
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>

-- Using Lua functions
vim.cmd([[
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fF <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').oldfiles()<cr>
]])

nmap("<leader>fw", ":Telescope workspaces<cr>")

nmap("<D-v>", "\"+p")
imap("<D-v>", "<Esc>\"+pA")
imap("<D-s>", "<Esc>:w<CR>A")
nmap("<D-s>", "<Esc>:w<CR>")
imap("<D-w>", "<Esc>:w<CR><Esc>:bd<CR>")
nmap("<D-w>", "<Esc>:w<CR><Esc>:bd<CR>")



vim.cmd([[
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
]])

-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.cmd([[
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
]])

-- NeoSnippet
-- Note: It must be "imap" and "smap".  It uses <Plug> mappings.
vim.cmd([[
function! GitHub() abort
  te github .
endfunction


let g:neosnippet#snippets_directory='~/.snippets/neosnippets'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


let g:airline_powerline_fonts = 1
autocmd StdinReadPre * let s:std_in=1
highlight ALEWarning ctermbg=lightmagenta
let g:ale_linters = {'ruby': ['ruby'], 'clojure': ['clj-kondo'], 'go': ['gofmt', 'golint', 'go vet', 'gopls']}


filetype plugin indent on
augroup filetypedetect
    au BufNewFile,BufRead .iterm-workspace set ft=json
    au BufNewFile,BufRead *.s,*.inc,*.asm set ft=asm_ca65
    " au BufNewFile,BufRead *.s,*.inc,*.asm set ft=kickass
augroup END



augroup Fastlane
    au BufNewFile,BufRead Fastfile,Appfile set ft=ruby
augroup END

let g:python_host_prog = '/Users/manlycode/.asdf/shims/python'
let g:python3_host_prog = '/Users/manlycode/.asdf/shims/python3'
let g:ruby_host_prog = '/Users/manlycode/.asdf/shims/ruby'


nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeToggle<CR>
]])

-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.o.cursorline = true
vim.o.number = true

-- empty setup using defaults
require("nvim-tree").setup()
--
-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort = {
--     sorter = "case_sensitive",
--   },
--   view = {
--     width = 30,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })


-- nnoremap <C-n> :NvimTreeToggle<CR>
nmap("<leader>r", ":NvimTreeRefresh<CR>")
nmap("<leader>n", ":NvimTreeToggle<CR>")
-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them


-- if exists('g:vv')
--   VVset fontsize=15
--   VVset windowheight=100%
--   VVset windowwidth=60%
--   VVset windowleft=0
--   VVset windowtop=0
--   VVset fontfamily=HackNerdFontCompleteM-Regular,\ Menlo,\ Courier\ New
-- endif


-- Run last command in neoterm
-- Force bash run the last command (!!)
nmap("<leader>tr", ":<c-u>exec printf(\"%sTexec !! \\<lt>cr>\", v:count)<cr>")


-- vim.g.completion_chain_complete_list = { default = {{ complete_items = { "lsp", "path", "buffers", "snippet" } },{ mode = "<c-p>" },{ mode = "<c-n>" },},TelescopePrompt = {},frecency = {}}
vim.cmd([[
if has("autocmd")
  autocmd BufNewFile,BufRead *.asm,*.s,*.inc makeprg=/usr/bin/make\ %:r
endif
]])


-- vim.g.tinted_colorspace = 256
vim.cmd.colorscheme('retrobox')

vim.o.showtabline = 2
local theme = {
  fill = 'TabLineFill',
  -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

local cmp = require('cmp')
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

      -- For `mini.snippets` users:
      -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
      -- insert({ body = args.body }) -- Insert at cursor
      -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
      -- require("cmp.config").set_onetime({ sources = {} })
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- Set configuration for specific filetype.
--[[ cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
  })
})
require("cmp_git").setup() ]]-- 

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline({ '/', '?' }, {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   }),
--   matching = { disallow_symbol_nonprefix_matching = false }
-- })

-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  -- capabilities = capabilities
-- }


require("workspaces").setup(
  {
    -- path to a file to store workspaces data in
    -- on a unix system this would be ~/.local/share/nvim/workspaces
    path = vim.fn.stdpath("data") .. "/workspaces",

    -- to change directory for nvim (:cd), or only for window (:lcd)
    -- deprecated, use cd_type instead
    -- global_cd = true,

    -- controls how the directory is changed. valid options are "global", "local", and "tab"
    --   "global" changes directory for the neovim process. same as the :cd command
    --   "local" changes directory for the current window. same as the :lcd command
    --   "tab" changes directory for the current tab. same as the :tcd command
    --
    -- if set, overrides the value of global_cd
    cd_type = "global",

    -- sort the list of workspaces by name after loading from the workspaces path.
    sort = true,

    -- sort by recent use rather than by name. requires sort to be true
    mru_sort = true,

    -- option to automatically activate workspace when opening neovim in a workspace directory
    auto_open = false,

    -- option to automatically activate workspace when changing directory not via this plugin
    -- set to "autochdir" to enable auto_dir when using :e and vim.opt.autochdir
    -- valid options are false, true, and "autochdir"
    auto_dir = false,

    -- enable info-level notifications after adding or removing a workspace
    notify_info = true,

    -- lists of hooks to run after specific actions
    -- hooks can be a lua function or a vim command (string)
    -- lua hooks take a name, a path, and an optional state table
    -- if only one hook is needed, the list may be omitted
    hooks = {
      add = {},
      remove = {},
      rename = {},
      open_pre = {},
      open = {},
    },
  })

-- defaults
 require('hex').setup({
   -- cli command used to dump hex data
   dump_cmd = 'xxd -g 1 -u',

   -- cli command used to assemble from hex data
   assemble_cmd = 'xxd -r',

   -- function that runs on BufReadPre to determine if it's binary or not
   is_file_binary_pre_read = function()
     -- logic that determines if a buffer contains binary data or not
     -- must return a bool
   end,

   -- function that runs on BufReadPost to determine if it's binary or not
   is_file_binary_post_read = function()
     -- logic that determines if a buffer contains binary data or not
     -- must return a bool
   end,
 })


 require('lualine').setup {
   options = {
     icons_enabled = true,
     theme = 'auto',
     component_separators = { left = '', right = ''},
     section_separators = { left = '', right = ''},
     disabled_filetypes = {
       statusline = {},
       winbar = {},
     },
     ignore_focus = {},
     always_divide_middle = true,
     always_show_tabline = true,
     globalstatus = false,
     refresh = {
       statusline = 100,
       tabline = 100,
       winbar = 100,
     }
   },
   sections = {
     lualine_a = {'mode'},
     lualine_b = {'branch', 'diff', 'diagnostics'},
     lualine_c = {'filename'},
     lualine_x = {'encoding', 'fileformat', 'filetype'},
     lualine_y = {'progress'},
     lualine_z = {'location'}
   },
   inactive_sections = {
     lualine_a = {},
     lualine_b = {},
     lualine_c = {'filename'},
     lualine_x = {'location'},
     lualine_y = {},
     lualine_z = {}
   },
   tabline = {},
   winbar = {
     lualine_c = {'filename'},
   },
   inactive_winbar = {},
   extensions = {}
 }


 local theme = {
   fill = 'TabLineFill',
   -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
   head = 'TabLine',
   current_tab = 'TabLineSel',
   tab = 'TabLine',
   win = 'TabLine',
   tail = 'TabLine',
 }

 require('tabby').setup({
   line = function(line)
     return {
       {
         { '  ', hl = theme.head },
         line.sep('', theme.head, theme.fill),
       },
       line.tabs().foreach(function(tab)
         local hl = tab.is_current() and theme.current_tab or theme.tab
         return {
           line.sep('', hl, theme.fill),
           tab.is_current() and '' or '󰆣',
           tab.number(),
           tab.name(),
           tab.close_btn(''),
           line.sep('', hl, theme.fill),
           hl = hl,
           margin = ' ',
         }
       end),
       line.spacer(),
       line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
         return {
           line.sep('', theme.win, theme.fill),
           win.is_current() and '' or '',
           win.buf_name(),
           line.sep('', theme.win, theme.fill),
           hl = theme.win,
           margin = ' ',
         }
       end),
       {
         line.sep('', theme.tail, theme.fill),
         { '  ', hl = theme.tail },
       },
       hl = theme.fill,
     }
   end,
   -- option = {}, -- setup modules' option,
 })

 require('modicator').setup()

require('os')

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local dmStatus = os.capture("dark-mode status")
if dmStatus == "off" then
  vim.cmd([[set bg=light]])
else
  vim.cmd([[set bg=dark]])
end
