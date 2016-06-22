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

if has("autocmd")
  augroup yaml_defaults
    autocmd!
    autocmd FileType yaml setlocal sts=2 shiftwidth=2 tabstop=2 expandtab
  augroup END
endif

