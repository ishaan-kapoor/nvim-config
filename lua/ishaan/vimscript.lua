vim.cmd([[

let installed_colorschemes = getcompletion('', 'color')
let dark_colorschemes = []
for colorscheme in installed_colorschemes
  if colorscheme =~# "light"
    continue
  endif
  call add(dark_colorschemes, colorscheme)
endfor
let n = len(dark_colorschemes)
execute 'colo' dark_colorschemes[rand() % n]
" let n = len(installed_colorschemes)
" execute 'colo' installed_colorschemes[rand() % n]

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
endif

]])
