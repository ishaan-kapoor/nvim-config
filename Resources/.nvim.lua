local function local_config()
  vim.opt.relativenumber = false
  vim.cmd("set makeprg=javac\\ -d\\ out\\ %")
end
vim.schedule(local_config)
-- To load local config after loading ftplugins in `after` directory to avoid overriding
-- https://stackoverflow.com/questions/76491151/delaying-lua-function-so-it-runs-after-neovim-has-successfully-launched
