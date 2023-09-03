vim.cmd([[
  autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif
]])
