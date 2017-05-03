function! asyncomplete#sources#necovim#completor(opt, ctx)
    let l:typed = a:ctx['typed']
    let l:startcol = necovim#get_complete_position(l:typed)
    let l:base = strpart(l:typed, l:startcol)
    let l:matches = necovim#gather_candidates(l:typed, l:base)
    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol+1, l:matches)
endfunction

function! asyncomplete#sources#necovim#get_source_options(opts)
   return a:opts
endfunction
