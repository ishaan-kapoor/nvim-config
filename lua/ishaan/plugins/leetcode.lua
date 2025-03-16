local leet_arg = "leet"
local plugin = {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  lazy = leet_arg ~= vim.fn.argv(0, -1),
  opts = {
    arg = leet_arg,
    lang = "python3",
    storage = {
      home = "~/coding/leetcode",
      cache = "~/coding/leetcode/cache",
    },
    injector = {
      ["python3"] = {
        before = true,
        after = "obj = Solution()\nprint(obj.function())"
      },
      ["python"] = {
        before = true,
        after = "obj = Solution()\nprint(obj.function())"
      },
      ["cpp"] = {
        before = { "#include <bits/stdc++.h>", "using namespace std;" },
        after = "int main() {\n    Solution obj = Solution();\n    cout << obj.function() << endl;\n    return 0;\n}"
      },
      ["java"] = {
        before = true,
      },
    }
  },
}
return plugin
