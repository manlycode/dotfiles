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

