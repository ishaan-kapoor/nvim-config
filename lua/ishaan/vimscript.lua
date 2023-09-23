vim.cmd([[
  autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif
  highlight WinSeparator guifg=None
]])
