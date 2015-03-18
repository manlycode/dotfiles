" vim: nowrap fdm=marker
source ~/.bundles.vim
runtime ftplugin/man.vim

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

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

function! FormatprgLocal(filter)
  if !empty(v:char)
    return 1
  else
    let l:command = v:lnum.','.(v:lnum+v:count-1).'!'.a:filter
    echo l:command
    execute l:command
  endif
endfunction

if has("autocmd")
  augroup ragtag_filetypes
    autocmd!
    autocmd FileType markdown    call RagtagInit()
  augroup END
  let pandoc_pipeline  = "pandoc --from=html --to=markdown"
  let pandoc_pipeline .= " | pandoc --from=markdown --to=html"
  autocmd FileType html setlocal formatexpr=FormatprgLocal(pandoc_pipeline)
endif

" Colorscheme
set background=light
silent! colorscheme default

set hidden

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
"
" Solarized {{{2
let g:solarized_menu=0
if exists('*togglebg#map')
  call togglebg#map("<F5>")
endif
" Ctlr-P {{{2
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'find %s -type f'
" Ragel {{{2
augroup ragel
  autocmd!
  autocmd BufNewFile,BufRead *.rl setfiletype ragel
augroup END
let g:ragel_default_subtype='ruby'

" Mappings {{{1
" Override defaults {{{2
nnoremap Q <Nop>
" File opening {{{2
cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'

map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Prompt to open file with same name, different extension
map <leader>er :e <C-R>=expand("%:r")."."<CR>


" Fix the & command in normal+visual modes {{{2
nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

" Strip trailing whitespace {{{2
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

" Visual line repeat {{{2
xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Experimental mappings {{{2
nnoremap g" /\v<<C-r>"><CR>

command! Path :call EchoPath()
function! EchoPath()
  echo join(split(&path, ","), "\n")
endfunction

command! TagFiles :call EchoTags()
function! EchoTags()
  echo join(split(&tags, ","), "\n")
endfunction


let g:EasyClipUseSubstituteDefaults = 1
nmap <silent> gs <plug>SubstituteOverMotionMap
nmap gss <plug>SubstituteLine
xmap gs p

let g:EasyClipUseCutDefaults = 0
nmap x <Plug>MoveMotionPlug
xmap x <Plug>MoveMotionXPlug
nmap xx <Plug>MoveMotionLinePlug

nmap cp <Plug>TransposeCharacters
nnoremap  <Plug>TransposeCharacters xp
\:call repeat#set("\<Plug>TransposeCharacters")<CR>

