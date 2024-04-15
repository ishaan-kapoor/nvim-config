local plugin = {
  'tamton-aquib/duck.nvim',
  event = 'VeryLazy',
}
local keymap_opts = { noremap = true, silent = true }
function plugin.config()
  keymap_opts.desc = "Create duck";    vim.keymap.set('n', '<leader>dd',  function() require("duck").hatch("🐤", 10) end, keymap_opts)
  keymap_opts.desc = "Kill duck";      vim.keymap.set('n', '<leader>dk',  function() require("duck").cook() end, keymap_opts)
  keymap_opts.desc = "Kill all ducks"; vim.keymap.set('n', '<leader>dka', function() require("duck").cook_all() end, keymap_opts)
end

return plugin
