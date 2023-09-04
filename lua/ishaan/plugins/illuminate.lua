local plugin = {
    "RRethy/vim-illuminate",
    opt = { large_file_cutoff = 1000 },
    -- event = { "VeryLazy", "BufRead" },
    event = "VeryLazy",
}

-- function plugin.config()
--
-- end

return plugin
