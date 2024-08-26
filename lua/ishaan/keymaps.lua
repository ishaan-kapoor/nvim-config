vim.g.mapleader = " " -- Set Leader key to Space
local map = vim.keymap.set

map({'i','v'}, "kj", "<Esc>", { desc = "Escape from insert and visual mode"})
map('c', "kj", "<Esc><Esc>", { desc = "Escape from command mode" })

-- map('n', "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "k when only 1 wrapped line in file" })
-- map('n', "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "j when only 1 wrapped line in file" })

map('n', "<leader> ", vim.cmd.source, { desc = "Source Current file" } )
map('n', "<leader>o", "o<Esc>", { desc = "Insert new line below" })
map('n', "<leader>O", "O<Esc>", { desc = "Insert new line above" })
map('v', "<leader>srt", ":sort<CR>", { desc = "sort selected lines" })
-- map('n', "<CR>", "r<CR>", { desc = "Replace Current Character with a new line Character" })

map('v', ">", ">gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<", "<gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<TAB>", ">gv", { desc = "Indent selected text without loosing indentation" })
map('v', "<S-TAB>", "<gv", { desc = "Indent selected text without loosing indentation" })
-- map('v', "<bs>", "d", { desc = "delete selection with backspace" })

map({'n', 'v', 'o'}, "gh", "0", { desc = "Goto start of line"})
map({'n', 'v', 'o'}, "gl", "$", { desc = "Goto end of line"})
map({'n', 'v', 'o'}, "gH", "g0", { desc = "Goto start of virtual line"})
map({'n', 'v', 'o'}, "gL", "g$", { desc = "Goto end of virtual line"})

-- map('n', "<C-j>", "ddp")
-- map('n', "<C-k>", "ddkkp")
-- map('v', "<C-j>", "dp")
-- map('v', "<C-k>", "dkkp")
map('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

map('n', "<C-d>", "<C-d>zz", { desc = "Page Down and center page" })
map('n', "<C-u>", "<C-u>zz", { desc = "Page Up and center page" })
map('n', "n", "nzzzv", { desc = "Go to next match and center page" })
map('n', "N", "Nzzzv", { desc = "Go to prev match and center page" })

-- yank, delete and paste to system clipboard
map({'n','v'}, "<leader>y", [["+y]], { desc = "Copy to clipboard"})
map('n', "<leader>Y", [["+Y]], { noremap=true, desc = "Copy to clipboard" })
map({'n','v'}, "<leader>d", [["+d]], { desc = "Cut to clipboard"})
map('n', "<leader>D", [["+D]], { desc = "Cut to clipboard" })
map({'n','v'}, "<leader>P", [["+P]], { desc = "Paste from clipboard"} )
map({'n','v'}, "<leader>p", [["+p]], { desc = "Paste from clipboard"})
map('n', "x", '"_x', { desc = "Delete single char without yanking" })
map('x', "p", [["_dP]], { desc = "Paste over selected text" })
-- map('v', "<C-c>", [["+y]], { desc = "Copy to clipboard with ctrl+C" })
-- map('n', "<C-c>", [["+yy]], { desc = "Copy to clipboard with ctrl+C" })
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

-- Windows & Splits
-- map('n', "<leader>w", "<C-w>", { desc = "Window movement using leader key" })
map('n', "<leader>wc", "<C-w>w", { desc = "Cycle windows" })
map('n', "<leader>wp", "<C-w>p", { desc = "Switch to recently accessed window" })
map('n', "<leader>wx", "<Cmd>close <CR>", { desc = "Close window" })
map('n', "<leader>wo", "<Cmd> only <CR>", { desc = "Close Other Windows" })
map('n', "<leader>wd", "<Cmd>close <CR>", { desc = "Close window" })
map('n', "<leader>wv", "<C-w>v", { desc = "Split Vertically" })
map('n', "<leader>wh", "<C-w>s", { desc = "Split Horizontally" })
map('n', "<leader>we", "<C-w>=", { desc = "Balance Splits" })
map('n', "<leader>w|", "<C-w>v", { desc = "Split Vertically" })
map('n', "<leader>w-", "<C-w>s", { desc = "Split Horizontally" })
map('n', "<leader>w=", "<C-w>=", { desc = "Balance Splits" })
map('n', "<leader>wt", "<C-w>T", { desc = "Open window in a new tab" })

-- Tabs
map({'n','v','i'}, "<F1>", "<Cmd>tabprev<CR>", { desc = "Go to previous tab" })
map('n', "<leader>to", ":tabonly <CR>", { desc = "Close Other Tabs" })
map('n', "<leader>tt", ":tabnew <CR>", { desc = "Open New Tab" })
map('n', "<leader>tn", ":tabnew <CR>", { desc = "Open New Tab" })
map('n', "<leader>tx", ":tabclose <CR>", { desc = "Close Tab" })
map('n', "<leader>td", ":tabclose <CR>", { desc = "Close Tab" })
-- map('n', "<leader>tn", ":tabnext <CR>", { desc = "Next Tab" })
-- map('n', "<leader>tp", ":tabprevious <CR>", { desc = "Previous Tab" })
map('n', "<leader>tk", ":tabnext <CR>", { desc = "Next Tab" })
map('n', "<leader>tj", ":tabprevious <CR>", { desc = "Previous Tab" })
map('n', "<leader>th", ":tabfirst <CR>", { desc = "First Tab" })
map('n', "<leader>tl", ":tablast <CR>", { desc = "Last Tab" })
map('n', "<leader>ts", ":tab split <CR>", { desc = "Tab Split Buffer" })

-- Buffers
map('n', "<TAB>", "<cmd>bn<CR>", { desc = "Move to next buffer" })
map('n', "<S-TAB>", "<cmd>bp<CR>", { desc = "Move to previous buffer" })
map('n', "<leader>bo", DeleteOtherBuffers, { desc = "Close Other Buffers" })
-- map('n', "<leader>bo", "<Cmd> %bdelete|edit #|bn|bd <CR>", { desc = "Close Other Buffers" })
-- map('n', "<leader>bo", "<Cmd> %bdelete|edit #|normal `` <CR>", { desc = "Close Other Buffers" })
map('n', "<leader>bn", "<Cmd> enew <CR>", { desc = "New Buffer" })
map('n', "<leader>bb", "<Cmd> enew <CR>", { desc = "New Buffer" })
map('n', "<leader>bk", "<Cmd> bn <CR>", { desc = "Next Buffer" })
map('n', "<leader>bj", "<Cmd> bp <CR>", { desc = "Previous Buffer" })
map('n', "<leader>bd", "<Cmd> bd <CR>", { desc = "Delete Buffer" })
-- map('n', "<leader>bx", "<Cmd> b# <bar> bd# <CR>", { desc = "Delete Buffer but preserve window order" })
map('n', "<leader>bx", "<Cmd> enew <bar> bd# <CR>", { desc = "Delete Buffer but preserve window order" })
map('n', "<leader>br", "<Cmd> e <CR>", { desc = "Reload Buffer" })

-- map('n', "<leader>b", "^", { desc = "GoTo begining of Line" })
-- map('n', "<leader>r", "<C-r>", { desc = "Redo" })
-- map('n', "<C-a>", "ggVG", { desc = "Select All" })
-- map('n', "<C-s>", "<Cmd> up <CR>", { desc = "Save Buffer" })
-- map('n', "<TAB>", "%", { desc = "Move start to end using tab" })

map('n', "<leader>lp", "<Cmd> Lazy <CR>", { desc = "Lazy Profile" })

map({'n','i'}, "<F3>", Compile, { desc = "Compile the program" })
-- map({'n','i'}, "<F4>", DebugCompile, { desc = "Compile the program with Debug Information" })
map('n', "<F5>", RunCode, {noremap = true, desc = "Run the Curretn Buffer"})
map('n', "<M-/>", RunCode, {noremap = true, desc = "Run the Curretn Buffer"})
map('n', "<leader>ww", "<Cmd> set wrap! <CR>", { desc = "Toggle Word wrap" })

-- Visual
map('x', "<", "<gv")
map('x', ">", ">gv")
map('x', "K", ":move '<-2<CR>gv-gv")
map('x', "J", ":move '>+1<CR>gv-gv")

-- map('n', "<leader>rc", ":execute 'colo' dark_colorschemes[rand() % n]<CR>", { desc = "Randomize Colorscheme" })
map('n', "<leader>rc", RandomColorScheme, { desc = "Randomize Colorscheme" })
map('n', "<leader>at", ":lua ApplyTransparency()<CR>", { desc = "Apply Transparency" })
map('n', "<leader>diff", ":DiffOrig<CR>", { desc = "Open Diff of current file" })

vim.cmd("command! -nargs=0 CP lua CompetetiveProgramming()")
vim.cmd("command! -nargs=0 ERC lua EDIT_NVIMRC()")

map('t', "<leader><Esc>", "<C-\\><C-n>", { noremap = true })

-- Extra Functions
map("v", "<leader>:", function() OpenURL(vim.inspect(GetVisualSelection()[1])) end)
map("n", "<leader>:", OpenURL)
map("v", "<leader>/", function() CheatSheet(vim.inspect(GetVisualSelection()[1])) end)
map("n", "<leader>/", CheatSheet)
map("n", "<leader>sb", SwapBool)
-- map('n', "<leader>gl", OpenURL, { noremap = true })
-- map('v', "<leader>gl", function() OpenURL(GetVisualSelection()[1]) end, { noremap = true })
-- map('n', "<leader>gq", CheatSheet, { noremap = true })
-- map('v', "<leader>gq", function() CheatSheet(GetVisualSelection()[1]) end, { noremap = true })
-- map('n', "sb", SwapBool, { noremap = true })

