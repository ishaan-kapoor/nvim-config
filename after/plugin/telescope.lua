local status, telescope = pcall(require, "telescope")
if not status then
  return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = '[F]ind [F]iles'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = '[F]ind by [G]rep'})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {desc = '[F]ind [W]ord'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = '[F]ind [B]uffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = '[F]ind [H]elp'})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {desc = '[F]ind [D]iagnostics'})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {desc = '[F]ind recently [O]pened files'})

local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
})

-- telescope.load_extension("fzf")
