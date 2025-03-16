local plugin = {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "hrsh7th/cmp-buffer",       -- buffer completions
    "hrsh7th/cmp-path",         -- path completions
    "hrsh7th/cmp-calc",         -- math evaluation completions
    "saadparwaiz1/cmp_luasnip", -- snippet completion
    -- "rafamadriz/friendly-snippets", -- VSCode like snippets
    "L3MON4D3/LuaSnip",         -- snippet engine
    -- "molleweide/LuaSnip-snippets.nvim", -- LuaSnip Snippets repository
    "hrsh7th/cmp-nvim-lua",     -- nvim lua completions
    "hrsh7th/cmp-nvim-lsp",     -- nvim lsp completions
    "neovim/nvim-lspconfig",    -- lsp config
    "nvim-lua/plenary.nvim",    -- lua utils
    -- "williamboman/mason-lspconfig.nvim", -- mason-lspconfig
    "williamboman/mason.nvim",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "windwp/nvim-autopairs"
  }
}

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
  Class = "󰠱",
  Color = "󰏘",
  Codeium = "",
  Constant = "󰏿",
  Constructor = "",
  Copilot = "",
  Enum = "",
  EnumMember = "",
  Event = "",
  Field = " ",
  File = "󰈙",
  Folder = "󰉋",
  Function = "󰊕",
  Interface = "",
  Keyword = "󰌋",
  Method = "󰆧",
  Misc = " ",
  Module = "",
  Operator = "󰆕",
  Property = "󰜢",
  Reference = "",
  Snippet = "",
  Struct = "",
  Text = "󰉿",
  TypeParameter = " ",
  Unit = "󰑭",
  Value = "󰎠",
  Variable = "󰀫",
}

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

function plugin.config()
  local cmp = require('cmp')
  local luasnip = require('luasnip')
  vim.opt.completeopt = "menu,menuone,noselect"

  cmp.setup {
    completion = {
      completeopt = "menu,menuone,preview,noselect",
    },

    snippet = {
      expand = function(args) luasnip.lsp_expand(args.body) end,
    },

    mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
      ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
      ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
      ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ["<C-e>"] = cmp.mapping {
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      },
      ["<CR>"] = cmp.mapping.confirm { select = false }, -- Set `select` to `false` to only confirm explicitly selected items.
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          if #cmp.get_entries() == 1 then
            cmp.confirm({ select = true })
          else
            cmp.select_next_item()
          end
        elseif luasnip.expandable() then
          luasnip.expand()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif check_backspace() then
          fallback()
        elseif has_words_before() then
          cmp.complete()
          if #cmp.get_entries() == 1 then
            cmp.confirm({ select = true })
          end
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    },

    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        -- Kind icons
        -- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          nvim_lua = "[Nvim Lua]",
          luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
    },
    sources = {
      { name = "render-markdown" },
      { name = "calc" },
      { name = "path" },
      { name = "luasnip" },
      { name = "nvim_lsp_signature_help" },
      { name = "nvim_lsp" },
      { name = "copilot" },
      { name = "codeium" },
      { name = "nvim_lua" },
      { name = "buffer" },
    },
    confirm_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    window = {
      -- documentation = { border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, },
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    experimental = {
      ghost_text = false,
      native_menu = false,
    },
  }

  cmp.event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())
end

return plugin
