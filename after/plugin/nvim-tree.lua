local setup, plugin = pcall(require, "nvim-tree")
if not setup then
  return
end

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

plugin.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
