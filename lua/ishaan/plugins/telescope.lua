local plugin = {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "[F]ind by [G]rep" },
        { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "[F]ind [W]ord" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "[F]ind [B]uffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "[F]ind [H]elp" },
        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "[F]ind [D]iagnostics" },
        { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "[F]ind recently [O]pened files" },
    },
}

function plugin.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
            path_display = { "truncate " },
            mappings = {
                i = {
                    ["<esc>"] = actions.close,
                    ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                    ["<C-j>"] = actions.move_selection_next, -- move to next result
                    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,                    -- false will only do exact matching
                override_generic_sorter = true,  -- override the generic sorter
                override_file_sorter = true,     -- override the file sorter
                case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            }
        }
    })

    telescope.load_extension('fzf')
end

return plugin
