local plugin = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-frecency.nvim",
  },
  keys = {
    { "<leader>f/",         "<cmd>Telescope search_history<CR>",                                                            desc = "Get the [S]earch history" },
    { "<leader>f<leader>c", "<cmd>Telescope colorscheme enable_preview=true<CR>",                                           desc = "Switch [C]olorschemes" },
    { "<leader>f<leader>t", "<cmd>Telescope filetypes theme=dropdown<CR>",                                                  desc = "Change [F]ile[T]ype" },
    { "<leader>fb",         "<cmd>Telescope buffers theme=dropdown winblend=30<CR>",                                        desc = "[F]ind [B]uffers" },
    { "<leader>fc",         "<cmd>Telescope commands theme=dropdown<CR>",                                                   desc = "Open a list of Possible Commands" },
    { "<leader>fch",        "<cmd>Telescope command_history theme=dropdown<CR>",                                            desc = "Open a list of Possible Commands" },
    { "<leader>fd",         "<cmd>Telescope diagnostics bufnr=0<CR>",                                                       desc = "[F]ind [D]iagnostics in current buffer" },
    { "<leader>fD",         "<cmd>Telescope diagnostics <CR>",                                                              desc = "[F]ind [D]iagnostics in all open buffers" },
    { "<leader>ff",         "<cmd>Telescope find_files<CR>",                                                                desc = "[F]ind [F]iles" },
    { "<leader>fg",         "<cmd>Telescope live_grep<CR>",                                                                 desc = "[F]ind by [G]rep" },
    { "<leader>fh",         "<cmd>Telescope help_tags<CR>",                                                                 desc = "[F]ind [H]elp" },
    { "<leader>fk",         "<cmd>Telescope keymaps<CR>",                                                                   desc = "List all [K]eymaps" },
    { "<leader>fm",         "<cmd>Telescope marks<CR>",                                                                     desc = "List all [M]arks" },
    { "<leader>fo",         "<cmd>Telescope oldfiles<CR>",                                                                  desc = "[F]ind recently [O]pened files" },
    { "<leader>fq",         "<cmd>Telescope quickfix<CR>",                                                                  desc = "Open [Q]uickFix List" },
    { "<leader>fr",         "<cmd>Telescope registers<CR>",                                                                 desc = "List all [R]egisters" },
    { "<leader>ft",         "<cmd>Telescope treesitter<CR>",                                                                desc = "List all Treesitter objects in the buffer" },
    { "<leader>fv",         "<cmd>Telescope vim_options<CR>",                                                               desc = "List all [V]im options" },
    { "<leader>fw",         function() require("telescope.builtin").grep_string({ search = vim.fn.expand('<cword>') }) end, desc = "[F]ind [W]ord" },
    -- { "<leader>fw",         "<cmd>Telescope grep_string<CR>",                                                               desc = "[F]ind [W]ord" },
    { "<leader>fz",         "<cmd>Telescope current_buffer_fuzzy_find<CR>",                                                 desc = "fu[Z]zy [F]ind inside the current buffer" },
    { "<leader>ss",         "<cmd>Telescope spell_suggest theme=cursor winblend=40<CR>",                                    desc = "[S]uggest [S]pellings" },
  },
  event = "VeryLazy",
}

function plugin.config()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    pickers = {
      find_files = { hidden = true },
      -- find_files = { hidden = true, find_command = { 'rg', '--files', '-uuu' } },
      -- find_files = { hidden = true, find_command = { 'fdfind', '--type', 'f' } },
      colorscheme = { enable_preview = true },
      spell_suggest = { theme = "cursor" },
      commands = { theme = "dropdown" },
      command_history = { theme = "dropdown" },
    },

    defaults = {
      file_ignore_patterns = { "node_modules", ".git", ".venv" },
      path_display = { "truncate " },
      mappings = {
        i = {
          ["<esc>"] = actions.close,
          ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
          ["<C-j>"] = actions.move_selection_next,                           -- move to next result
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
          ["<C-t>"] = actions.select_tab,
          ["<C-y>"] = actions.preview_scrolling_up,
          ["<C-e>"] = actions.preview_scrolling_down,
        },
      },
    },

    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      }
    }
  })

  telescope.load_extension("fzf")
  telescope.load_extension("frecency")
end

return plugin
