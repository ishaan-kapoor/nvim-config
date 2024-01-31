local map = vim.keymap.set

map('n', "<leader>o", "o<Esc>", { desc = "Insert new line below" })
map('n', "<leader>O", "O<Esc>", { desc = "Insert new line above" })
map('v', "<leader>srt", ":sort<CR>", { desc = "sort selected lines" })

map('v', ">", ">gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<", "<gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<TAB>", ">gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<S-TAB>", "<gv", { desc = "Indent selected text without loosing indentation" })

map('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

map('n', "<C-d>", "<C-d>zz", { desc = "Page Down and center page" })
map('n', "<C-u>", "<C-u>zz", { desc = "Page Up and center page" })
map('n', "n", "nzzzv", { desc = "Go to next match and center page" })
map('n', "N", "Nzzzv", { desc = "Go to prev match and center page" })

map({'n','v'}, "<leader>y", [["+y]], { desc = "Copy to clipboard"})
map('n', "<leader>Y", [["+Y]], { noremap=true, desc = "Copy to clipboard" })
map({'n','v'}, "<leader>d", [["+d]], { desc = "Cut to clipboard"})
map('n', "<leader>D", [["+D]], { desc = "Cut to clipboard" })
map({'n','v'}, "<leader>P", [["+P]], { desc = "Paste from clipboard"} )
map({'n','v'}, "<leader>p", [["+p]], { desc = "Paste from clipboard"})
map('n', "x", '"_x', { desc = "Delete single char without yanking" })
map('x', "p", [["_dP]], { desc = "Paste over selected text" })
map('v', "<C-c>", [["+y]], { desc = "Copy to clipboard with ctrl+C" })
map('n', "<C-c>", [["+yy]], { desc = "Copy to clipboard with ctrl+C" })
-- map({'n','v'}, "<C-v>", [["+p]], { desc = "Paste from clipboard"}) -- Disabled for blocking visual block selection
-- Other yank, delete and paste binds
map({'n','v'}, ";d", [["_d]], { desc = "Delete to void"})
map({'n','v'}, ";p", [["0p]], { desc = "Paste last yanked thing, not deleted"})
map({'n','v'}, ";P", [["0P]], { desc = "Paste last yanked thing, not deleted"})
map("n", "dd", function ()
  if vim.fn.getline(".") == "" then return '"_dd' end
  return "dd"
end, {expr = true})
-- map('n', "<C-L>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace word under cursor, in the entire file" }) -- disabled as it clashes with vim tmux navigator
map({'n', 'v'}, "<leader>su", CtrlD_VSCode, { desc = "Search and replace word under cursor, one by one in this buffer" })

-- Increment and Decrement Numbers
map('n', "<leader>+", "<C-a>", { noremap=true, desc = "Increment Number Under Cursor" })
map('n', "<leader>-", "<C-x>", { desc = "Decrement Number Under Cursor" })

-- Visual
map("x", "<", "<gv")
map("x", ">", ">gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")
