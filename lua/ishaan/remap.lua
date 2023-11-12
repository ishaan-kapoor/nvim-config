vim.g.mapleader = " " -- Set Leader key to Space

vim.keymap.set({'i','v'}, "kj", "<Esc>", { desc = "Escape from insert and visual mode"})
vim.keymap.set('c', "kj", "<Esc><Esc>", { desc = "Escape from command mode" })

vim.keymap.set('n', "<leader> ", vim.cmd.source, { desc = "Source Current file" } )
vim.keymap.set('n', "<leader>o", "o<Esc>", { desc = "Insert new line below" })
vim.keymap.set('n', "<leader>O", "O<Esc>", { desc = "Insert new line above" })
vim.keymap.set('v', "<leader>srt", ":sort<CR>", { desc = "sort selected lines" })

vim.keymap.set('v', ">", ">gv", { desc = "Indent selected text without loosing indentation" })
vim.keymap.set('v', "<", "<gv", { desc = "Indent selected text without loosing indentation" })
vim.keymap.set('v', "<TAB>", ">gv", { desc = "Indent selected text without loosing indentation" })
vim.keymap.set('v', "<S-TAB>", "<gv", { desc = "Indent selected text without loosing indentation" })
-- vim.keymap.set('v', "<bs>", "d", { desc = "delete selection with backspace" })

-- vim.keymap.set('n', "<C-j>", "ddp")
-- vim.keymap.set('n', "<C-k>", "ddkkp")
-- vim.keymap.set('v', "<C-j>", "dp")
-- vim.keymap.set('v', "<C-k>", "dkkp")
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

vim.keymap.set('n', "<C-d>", "<C-d>zz", { desc = "Page Down and center page" })
vim.keymap.set('n', "<C-u>", "<C-u>zz", { desc = "Page Up and center page" })
vim.keymap.set('n', "n", "nzzzv", { desc = "Go to next match and center page" })
vim.keymap.set('n', "N", "Nzzzv", { desc = "Go to prev match and center page" })

-- yank, delete and paste to system clipboard
vim.keymap.set({'n','v'}, "<leader>y", [["+y]], { desc = "Copy to clipboard"})
vim.keymap.set('n', "<leader>Y", [["+Y]], { noremap=true, desc = "Copy to clipboard" })
vim.keymap.set({'n','v'}, "<leader>d", [["+d]], { desc = "Cut to clipboard"})
-- vim.keymap.set('n', "<leader>D", [["+D]], { desc = "Cut to clipboard" })
vim.keymap.set({'n','v'}, "<leader>P", [["+P]], { desc = "Paste from clipboard"} )
vim.keymap.set({'n','v'}, "<leader>p", [["+p]], { desc = "Paste from clipboard"})
vim.keymap.set('n', "x", '"_x', { desc = "Delete single char without yanking" })
vim.keymap.set('x', "p", [["_dP]], { desc = "Paste over selected text" })
vim.keymap.set('v', "<C-c>", [["+y]], { desc = "Copy to clipboard with ctrl+C" })
vim.keymap.set('n', "<C-c>", [["+yy]], { desc = "Copy to clipboard with ctrl+C" })
-- vim.keymap.set({'n','v'}, "<C-v>", [["+p]], { desc = "Paste from clipboard"}) -- Disabled for blocking visual block selection
-- Other yank, dlete and paste binds
vim.keymap.set({'n','v'}, ";d", [["_d]], { desc = "Delete to void"})
vim.keymap.set({'n','v'}, ";p", [["0p]], { desc = "Paste last yanked thing, not deleted"})
vim.keymap.set({'n','v'}, ";P", [["0P]], { desc = "Paste last yanked thing, not deleted"})

-- vim.keymap.set('n', "<C-L>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace word under cursor, in the entire file" }) -- disabled as it clashes with vim tmux navigator
vim.keymap.set({'n', 'v'}, "<leader>su", CtrlD_VSCode, { desc = "Search and replace word under cursor, one by one in this buffer" })

-- Increment and Decrement Numbers
vim.keymap.set('n', "<leader>+", "<C-a>", { noremap=true, desc = "Increment Number Under Cursor" })
vim.keymap.set('n', "<leader>-", "<C-x>", { desc = "Decrement Number Under Cursor" })

-- Windows & Splits
-- vim.keymap.set('n', "<leader>w", "<C-w>", { desc = "Window movement using leader key" })
-- vim.keymap.set('n', "<leader>ww", "<C-w>w", { desc = "Switch to recent window" })
vim.keymap.set('n', "<leader>wx", "<Cmd>close <CR>", { desc = "Close window" })
vim.keymap.set('n', "<leader>wo", "<Cmd> only <CR>", { desc = "Close Other Windows" })
vim.keymap.set('n', "<leader>wd", "<Cmd>close <CR>", { desc = "Close window" })
vim.keymap.set('n', "<leader>wv", "<C-w>v", { desc = "Split Vertically" })
vim.keymap.set('n', "<leader>wh", "<C-w>s", { desc = "Split Horizontally" })
vim.keymap.set('n', "<leader>we", "<C-w>=", { desc = "Balance Splits" })
vim.keymap.set('n', "<leader>w|", "<C-w>v", { desc = "Split Vertically" })
vim.keymap.set('n', "<leader>w-", "<C-w>s", { desc = "Split Horizontally" })
vim.keymap.set('n', "<leader>w=", "<C-w>=", { desc = "Balance Splits" })
vim.keymap.set('n', "<leader>wt", "<C-w>T", { desc = "Open window in a new tab" })

-- Tabs
vim.keymap.set({'n','v','i'}, "<F1>", "<Cmd>tabprev<CR>", { desc = "Go to previous tab" })
vim.keymap.set('n', "<leader>to", ":tabonly <CR>", { desc = "Close Other Tabs" })
vim.keymap.set('n', "<leader>tt", ":tabnew <CR>", { desc = "Open New Tab" })
vim.keymap.set('n', "<leader>tx", ":tabclose <CR>", { desc = "Close Tab" })
vim.keymap.set('n', "<leader>td", ":tabclose <CR>", { desc = "Close Tab" })
vim.keymap.set('n', "<leader>tn", ":tabnext <CR>", { desc = "Next Tab" })
vim.keymap.set('n', "<leader>tp", ":tabprevious <CR>", { desc = "Previous Tab" })
vim.keymap.set('n', "<leader>tk", ":tabnext <CR>", { desc = "Next Tab" })
vim.keymap.set('n', "<leader>tj", ":tabprevious <CR>", { desc = "Previous Tab" })
vim.keymap.set('n', "<leader>th", ":tabfirst <CR>", { desc = "First Tab" })
vim.keymap.set('n', "<leader>tl", ":tablast <CR>", { desc = "Last Tab" })
vim.keymap.set('n', "<leader>ts", ":tab split <CR>", { desc = "Tab Split Buffer" })

-- Buffers
vim.keymap.set('n', "<TAB>", "<cmd>bn<CR>", { desc = "Move to next buffer" })
vim.keymap.set('n', "<S-TAB>", "<cmd>bp<CR>", { desc = "Move to previous buffer" })
vim.keymap.set('n', "<leader>bk", "<Cmd> bn <CR>", { desc = "Next Buffer" })
vim.keymap.set('n', "<leader>bj", "<Cmd> bp <CR>", { desc = "Previous Buffer" })
vim.keymap.set('n', "<leader>bd", "<Cmd> bd <CR>", { desc = "Delete Buffer" })
vim.keymap.set('n', "<leader>bx", "<Cmd> bd <CR>", { desc = "Delete Buffer" })
vim.keymap.set('n', "<leader>br", "<Cmd> e <CR>", { desc = "Reload Buffer" })

-- vim.keymap.set('n', "<leader>b", "^", { desc = "GoTo begining of Line" })
-- vim.keymap.set('n', "<leader>r", "<C-r>", { desc = "Redo" })
-- vim.keymap.set('n', "<C-a>", "ggVG", { desc = "Select All" })
-- vim.keymap.set('n', "<C-s>", "<Cmd> up <CR>", { desc = "Save Buffer" })
-- vim.keymap.set('n', "<TAB>", "%", { desc = "Move start to end using tab" })

vim.keymap.set('n', "<leader>lp", "<Cmd> Lazy <CR>", { desc = "Lazy Profile" })

vim.keymap.set({'n','i'}, "<F3>", Compile, { desc = "Compile the program" })
vim.keymap.set({'n','i'}, "<F4>", DebugCompile, { desc = "Compile the program with Debug Information" })
vim.keymap.set({'n','i'}, "<F6>", "<Cmd> up <CR> <Cmd> !./% <CR>", { desc = "Run Executable File" })

vim.keymap.set('n', "<M-/>", RunCode, {noremap = true, desc = "Run the Code"})
vim.keymap.set('n', "<leader>ww", "<Cmd> set wrap! <CR>", { desc = "Toggle Word wrap" })
