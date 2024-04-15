vim.cmd([[

let installed_colorschemes = getcompletion('', 'color')
let dark_colorschemes = []
let light_colorschemes = ["shine", "morning", "zellner", "delek", "coffee-cream", "hc-flurry"]
for colorscheme in installed_colorschemes
  if colorscheme =~# "light"
    continue
  endif
  if colorscheme =~# "peachpuff"
    continue
  endif
  if colorscheme =~# "milkshake"
    continue
  endif
  if index(light_colorschemes, colorscheme) != -1
    continue
  endif
  call add(dark_colorschemes, colorscheme)
endfor
let n = len(dark_colorschemes)
execute 'colo' dark_colorschemes[rand() % n]

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
endif

" https://github.com/ap/vim-you-keep-using-that-word
function s:DoWordMotion(wordmotion, endmotion)
  let before = line('.')
  execute 'normal! v'.v:count1.a:wordmotion
  " when the cursor wraps, we must check whether it went too far
  if line('.') != before
    " try backing up to the end of the previous word
    " and then see if we stay on the same line
    let target = winsaveview()
    let before = line('.')
    exe 'normal! g'.a:endmotion
    if line('.') != before
      " we are now at the end of the word at the end of previous line,
      " which is exactly where we want to be
      return
    else
      " we were (almost) in the right place, so go back there
      call winrestview(target)
    endif
  endif
  " visual selections are inclusive; to avoid erasing the first char
  " of the following word, we must back off one column
  execute 'normal! h'
endfunction
onoremap <silent> w :<C-U>call <SID>DoWordMotion('w','e')<CR>
onoremap <silent> W :<C-U>call <SID>DoWordMotion('W','E')<CR>

" https://gist.github.com/LinArcX/0aba3e0d5876a0e2f856c0bb92c77573"
" function! CreateCenteredFloatingWindow()
"     let width = min([&columns - 4, max([80, &columns - 20])])
"     let height = min([&lines - 4, max([20, &lines - 10])])
"     let top = ((&lines - height) / 2) - 1
"     let left = (&columns - width) / 2
"     let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}
"
"     let top = "?" . repeat("Ä", width - 2) . "?"
"     let mid = "³" . repeat(" ", width - 2) . "³"
"     let bot = "?" . repeat("Ä", width - 2) . "?"
"     let lines = [top] + repeat([mid], height - 2) + [bot]
"     let s:buf = nvim_create_buf(v:false, v:true)
"     call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
"     call nvim_open_win(s:buf, v:true, opts)
"     set winhl=Normal:Floating
"     let opts.row += 1
"     let opts.height -= 2
"     let opts.col += 2
"     let opts.width -= 4
"     call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
"     au BufWipeout <buffer> exe 'bw '.s:buf
" endfunction


]])
