local plugin = {
  "L3MON4D3/LuaSnip",             -- snippet engine
  event = { "InsertEnter" },
  dependencies = { "rafamadriz/friendly-snippets" },
  run = "make install_jsregexp"
}

function plugin.config()
  local luasnip = require('luasnip')
  require("luasnip.loaders.from_vscode").lazy_load() -- VSCode like snippets
  luasnip.add_snippets("python", {
    luasnip.snippet("multi_int_input", {
      -- luasnip.insert_node(1, "N, M"),
      luasnip.text_node("= map(int, input().split())")
    }),
    luasnip.snippet("int_input", {
      -- luasnip.insert_node(1, "N"),
      luasnip.text_node("= int(input())")
    }),
    luasnip.snippet("arr_input", {
      -- luasnip.insert_node(1, "arr"),
      luasnip.text_node("= list(map(int, input().split()))")
    }),
    luasnip.snippet("adjacency_list", {
      -- luasnip.insert_node(1, "adj"),
      luasnip.text_node("= [[] for _ in range(N)]")
    }),
    luasnip.snippet("test_cases", {
      luasnip.text_node("for _ in range(int(input())):")
    }),
    luasnip.snippet("bool_arr_input", {
      luasnip.text_node("= [i == '1' for i in input()]")
    }),
    luasnip.snippet("arr_input_multiline", {
      luasnip.text_node("= [int(input()) for _ in range(N)]")
    }),
  })
end

return plugin
