" ------------------------------------------------------------------
" --- Elixir
" ------------------------------------------------------------------
if has("autocmd")
  augroup elixir_defaults
    autocmd!
    autocmd BufNewFile,BufRead *.ex set filetype=elixir
    autocmd BufNewFile,BufRead *.exs set filetype=elixir
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
" --- Ruby
" ------------------------------------------------------------------
if has("autocmd")
  augroup ruby_defaults
    autocmd!
    autocmd FileType ruby setlocal sts=2 shiftwidth=2 tabstop=2 expandtab
    autocmd FileType eruby setlocal sts=2 shiftwidth=2 tabstop=2 expandtab

    autocmd BufNewFile,BufRead *.js.erb set filetype=eruby.javascript
    autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html
  augroup END
endif

" ------------------------------------------------------------------
" Fastlane
" ------------------------------------------------------------------
au BufRead,BufNewFile Fastfile set filetype=ruby
au BufRead,BufNewFile Appfile set filetype=ruby

" ------------------------------------------------------------------
" Swift
" ------------------------------------------------------------------
" 
"

" ------------------------------------------------------------------
" YAML
" ------------------------------------------------------------------
if has("autocmd")
  augroup yaml_defaults
    autocmd!
    autocmd FileType yaml setlocal sts=2 shiftwidth=2 tabstop=2 expandtab
  augroup END
endif

" ------------------------------------------------------------------
" Vim
" ------------------------------------------------------------------
if has("autocmd")
  augroup vim_defaults
    autocmd!
    autocmd FileType vim setlocal sts=2 shiftwidth=2 tabstop=2 expandtab
  augroup END
endif

if has("autocmd")
  augroup asm_defaults
    autocmd!
    autocmd BufNewFile,BufRead *.z80 set filetype=asm
  augroup END
endif


" ------------------------------------------------------------------
" Elixir
" ------------------------------------------------------------------

let g:neomake_elixir_mix_maker = {
      \ 'exe' : 'mix',
      \ 'args': ['compile', '--warnings-as-errors'],
      \ 'cwd': getcwd(),
      \ 'errorformat':
        \ '** %s %f:%l: %m,' .
        \ '%f:%l: warning: %m'
      \ }

let g:neomake_elixir_enabled_makers = ['mix']

" ------------------------------------------------------------------
" Clojure
" ------------------------------------------------------------------

au Filetype clojure nmap <leader>eb :Require<cr>  
au Filetype clojure nmap <leader>ef :Eval<cr>  

" ------------------------------------------------------------------
" Terraform
" ------------------------------------------------------------------
if has("autocmd")
  augroup terraform_defaults
    autocmd!
    autocmd FileType terraform setlocal sts=2 shiftwidth=2 tabstop=2 expandtab
  augroup END
endif

" ------------------------------------------------------------------
" Kickassembler
" ------------------------------------------------------------------
" if has("autocmd")
"   augroup kickass_defaults
"     autocmd!
"     autocmd FileType kickass setlocal sts=4 shiftwidth=4 tabstop=4 expandtab
"     autocmd BufNewFile,BufRead *.asm,*.s,*.inc makeprg=./bin/compile.sh\ %
"     autocmd BufNewFile,BufRead *spec.asm makeprg=./bin/test.sh\ %
"     autocmd FileType kickass setlocal 
"     autocmd FileType kickass setlocal errorformat+=%.%#(%f\ %l:%c)%.%#Error:\ %m
"     autocmd BufWritePost *.asm,*.s,*.inc Make
"   augroup END
" endif

" ------------------------------------------------------------------
" Go 
" ------------------------------------------------------------------
let g:go_fmt_command = 'goimports'
let g:go_fmt_autosave = 1
let g:go_imports_autosave = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['all']

if has("autocmd")
  augroup go_defaults
    autocmd!
    autocmd FileType go setlocal noet ts=4 sw=4 sts=4
    autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
    autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
    autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
    autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
    autocmd ColorScheme * highlight SignColumn guibg=#adadad
  augroup END
endif
