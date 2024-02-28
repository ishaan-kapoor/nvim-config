vim.cmd([[

let installed_colorschemes = getcompletion('', 'color')
let dark_colorschemes = []
let light_colorschemes = ["shine", "morning", "zellner", "delek", "coffee-cream", "hc-flurry"]
for colorscheme in installed_colorschemes
  if colorscheme =~# "light"
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

]])
