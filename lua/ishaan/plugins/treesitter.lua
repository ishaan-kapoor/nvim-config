local plugin = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-ts-autotag" }
}

function plugin.config()
  -- import nvim-treesitter plugin
  local treesitter = require("nvim-treesitter.configs")

  -- configure treesitter
  treesitter.setup({
    indent = { enable = true }, -- enable indentation
    ensure_installed = {        -- ensure these language parsers are installed
      "python", "cpp", "c", "lua", "vim", "vimdoc", "query", "regex", "bash",
      "markdown", "markdown_inline"
    },
    sync_install = false,
    auto_install = false,        -- auto install above language parsers
    autotag = { enable = true }, -- enable autotagging
    highlight = {                -- enable syntax highlighting
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then return true end
      end,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "vv",
        node_incremental = "vv",
        node_decremental = "v-",
        scope_incremental = "v+",
      },
    },
  })
end

return plugin
