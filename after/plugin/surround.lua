local status, plugin = pcall(require, "nvim-surround")
if not status then
  return
end

plugin.setup({
  -- Configuration here, or leave empty to use defaults
})
