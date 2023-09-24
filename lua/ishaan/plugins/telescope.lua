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
        { "<leader>fb", "<cmd>Telescope buffers theme=dropdown winblend=30<cr>", desc = "[F]ind [B]uffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "[F]ind [H]elp" },
        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "[F]ind [D]iagnostics" },
        { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "[F]ind recently [O]pened files" },
        { "<leader>ft", "<cmd>Telescope treesitter<cr>", desc = "List all Treesitter objects in the buffer" },
        { "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "fu[Z]zy [F]ind inside the current buffer" },
        { "<leader>fs", "<cmd>Telescope search_history<cr>", desc = "Get the [S]earch history" },
        { "<leader>fv", "<cmd>Telescope vim_options<cr>", desc = "List all [V]im options" },
        { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "List all [M]arks" },
        { "<leader>fr", "<cmd>Telescope registers<cr>", desc = "List all [R]egisters" },
        { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "List all [K]eymaps" },
        { "<leader>fc", "<cmd>Telescope commands theme=dropdown<cr>", desc = "Open a list of Possible Commands" },
        { "<leader>fch", "<cmd>Telescope command_history theme=dropdown<cr>", desc = "Open a list of Possible Commands" },

        { "<leader>ss", "<cmd>Telescope spell_suggest theme=cursor winblend=40<cr>", desc = "[S]uggest [S]pellings" },
        { "<leader>f<leader>c", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Switch Colorschemes" },
        { "<leader>f<leader>t", "<cmd>Telescope filetypes theme=dropdown<cr>", desc = "Change Filetype" },
        -- leader
    },
    -- event = "VeryLazy",
}

function EDIT_NVIMRC()
    require("plenary.reload").reload_module("telescope")
    require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({
        prompt_title = "~ nvimrc ~",
        cwd = "~/.config/nvim/lua/ishaan",
        shorten_path = true,
        no_ignore = true,
        no_parent_ignore = true,
        layout_strategy = "horizontal",
        -- layout_config = {
        --     preview_width = 0.65,
        -- },
        height = 10,
    }))
end

function plugin.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        pickers = {
            find_files = { hidden = true },
            colorscheme = { enable_preview = true },
            spell_suggest = { theme = "cursor" },
            commands = { theme = "dropdown" },
            command_history = { theme = "dropdown" },
        },

        defaults = {
            path_display = { "truncate " },
            mappings = {
                i = {
                    ["<esc>"] = actions.close,
                    ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                    ["<C-j>"] = actions.move_selection_next, -- move to next result
                    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
                    ["<C-t>"] = actions.select_tab,
                    ["<C-y>"] = actions.preview_scrolling_up,
                    ["<C-e>"] = actions.preview_scrolling_down,
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
