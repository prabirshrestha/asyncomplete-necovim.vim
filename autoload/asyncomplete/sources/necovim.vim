function! asyncomplete#sources#necovim#completor(opt, ctx)
    let l:col = a:ctx['col']
    let l:typed = a:ctx['typed']

    let l:kw = matchstr(l:typed, '\w\+$')
    let l:kwlen = len(l:kw)

    let l:matches = necovim#gather_candidates(l:typed, l:typed)
    let l:startcol = l:col - l:kwlen

    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction

function! asyncomplete#sources#necovim#get_source_options(opts)
   return a:opts
endfunction
