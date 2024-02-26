local plugin = {
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    -- "nvim-treesitter/playground",
  },
  event = "VeryLazy",
}

function plugin.config()
  require("nvim-treesitter.configs").setup {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,         -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          -- You can optionally set descriptions to the mappings (used in the desc parameter of
          -- nvim_buf_set_keymap) which plugins like which-key display
          -- You can also use captures from other query groups like `locals.scm`
          -- ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },

          ["a="] = { query = "@assignment.outer", desc = "Outer part of the sasignment" },
          ["i="] = { query = "@assignment.inner", desc = "Inner part of the sasignment" },
          ["l="] = { query = "@assignment.lhs", desc = "Left part of the sasignment" },
          ["r="] = { query = "@assignment.rhs", desc = "Right part of the sasignment" },

          ["aa"] = { query = "@parameter.outer", desc = "Outer part of the argument/parameter" },
          ["ia"] = { query = "@parameter.inner", desc = "Inner part of the argument/parameter" },

          ["ai"] = { query = "@conditional.outer", desc = "Outer part of conditional" },
          ["ii"] = { query = "@conditional.inner", desc = "Inner part of conditional" },

          ["al"] = { query = "@loop.outer", desc = "Outer part of loop" },
          ["il"] = { query = "@loop.inner", desc = "Inner part of loop" },

          ["afc"] = { query = "@call.outer", desc = "Outer part of function call" },
          ["ifc"] = { query = "@call.inner", desc = "Inner part of function call" },

          ["ac"] = { query = "@class.outer", desc = "Outer part of class region" },
          ["ic"] = { query = "@class.inner", desc = "Inner part of class region" },

          ["am"] = { query = "@function.outer", desc = "Outer part of function region" },
          ["im"] = { query = "@function.inner", desc = "Inner part of function region" },

          ["agc"] = { query = "@comment.outer", desc = "Outer part of comment" },
          ["igc"] = { query = "@comment.inner", desc = "Inner part of comment" },

          ["ir"] = { query = "@return.inner", desc = "Inner part of return statement" },
          ["ar"] = { query = "@return.outer", desc = "Outer part of return statement" },

          ["in"] = { query = "@number.inner", desc = "Inner part of number" },
          ["as"] = { query = "@statement.outer", desc = "Outer part of statement" },
        },
        -- You can choose the select mode (default is charwise 'v')
        --
        -- Can also be a function which gets passed a table with the keys
        -- * query_string: eg '@function.inner'
        -- * method: eg 'v' or 'o'
        -- and should return the mode ('v', 'V', or '<c-v>') or a table
        -- mapping query_strings to modes.
        selection_modes = {
          ['@parameter.outer'] = 'v',           -- charwise
          ['@function.outer'] = 'V',            -- linewise
          ['@class.outer'] = 'V',               -- linewwise
          -- ['@class.outer'] = '<c-v>', -- blockwise
        },
        -- If you set this to `true` (default is `false`) then any textobject is
        -- extended to include preceding or succeeding whitespace. Succeeding
        -- whitespace has priority in order to act similarly to eg the built-in
        -- `ap`.
        --
        -- Can also be a function which gets passed a table with the keys
        -- * query_string: eg '@function.inner'
        -- * selection_mode: eg 'v'
        -- and should return true of false
        include_surrounding_whitespace = true,
      },
      lsp_interop = {
        enable = true,
        border = 'none',
        floating_preview_opts = {},
        peek_definition_code = {
          ["<leader>dm"] = "@function.outer",
          ["<leader>dc"] = "@class.outer",
        },
      },
      move = {
        enable = true,
        set_jumps = true,         -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]fc"] = { query = "@call.outer", desc = "Next function call start" },
          ["]m"] = { query = "@function.outer", desc = "Next function start" },
          ["]c"] = { query = "@class.outer", desc = "Next class start" },
          ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
          ["]l"] = { query = "@loop.outer", desc = "Next loop start" },
          --
          -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
          -- ["]o"] = "@loop.*",
          -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
          --
          -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
          -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
          ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
          ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
        },
        goto_next_end = {
          ["]FC"] = { query = "@call.outer", desc = "Next function call end" },
          ["]M"] = { query = "@function.outer", desc = "Next function end" },
          ["]C"] = { query = "@class.outer", desc = "Next class end" },
          ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
          ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
        },
        goto_previous_start = {
          ["[fc"] = { query = "@call.outer", desc = "Previous function call start" },
          ["[m"] = { query = "@function.outer", desc = "Previous function start" },
          ["[c"] = { query = "@class.outer", desc = "Previous class start" },
          ["[i"] = { query = "@conditional.outer", desc = "Previous conditional start" },
          ["[l"] = { query = "@loop.outer", desc = "Previous loop start" },
        },
        goto_previous_end = {
          ["[FC"] = { query = "@call.outer", desc = "Previous function call end" },
          ["[M"] = { query = "@function.outer", desc = "Previous function end" },
          ["[C"] = { query = "@class.outer", desc = "Previous class end" },
          ["[I"] = { query = "@conditional.outer", desc = "Previous conditional end" },
          ["[L"] = { query = "@loop.outer", desc = "Previous loop end" },
        },
        -- Below will go to either the start or the end, whichever is closer.
        -- Use if you want more granular movements
        -- Make it even more gradual by adding multiple queries and regex.
        goto_next = {
          ["]d"] = "@conditional.outer",
        },
        goto_previous = {
          ["[d"] = "@conditional.outer",
        }
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>na"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>pa"] = "@parameter.inner",
        },
      },
    },
  }
  local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
  vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move)
  vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_opposite)
  vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f)
  vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F)
  vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t)
  vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T)
end

return plugin
