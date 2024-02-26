local plugin = {
  "eandrju/cellular-automaton.nvim",
  keys = {
    { '<leader>fml',  "<cmd>CellularAutomaton make_it_rain<CR>", desc = "make_it_rain" },
    { '<leader>hack', "<cmd>CellularAutomaton scramble<CR>",     desc = "scramble" },
  },
  lazy = true,
  -- config=true
}

local slide = {
  fps = 50,
  name = 'slide',
  update = function(grid)
    for i = 1, #grid do
      local prev = grid[i][#(grid[i])]
      for j = 1, #(grid[i]) do
        grid[i][j], prev = prev, grid[i][j]
      end
    end
    return true
  end
}

function plugin.config()
  require("cellular-automaton").register_animation(slide)
end

return plugin
