vim.cmd([[

let installed_colorschemes = getcompletion('', 'color')
let n = len(installed_colorschemes)
execute 'colo' installed_colorschemes[rand() % n]

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
endif

]])
