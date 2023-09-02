vim.g.mapleader = " "

vim.keymap.set("n", "<leader> ", vim.cmd.source)
vim.keymap.set({"i", "v"}, "kj", "<Esc>")

-- vim.keymap.set("n", "<C-j>", "ddp")
-- vim.keymap.set("n", "<C-k>", "ddkkp")
-- vim.keymap.set("v", "<C-j>", "dp")
-- vim.keymap.set("v", "<C-k>", "dkkp")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank, delete and paste to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc = "Copy to clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["+d]])
vim.keymap.set("n", "<leader>D", [["+D]])
vim.keymap.set({"n", "v"}, "<leader>P", [["+P]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "x", '"_x', {desc = "Delete single char without yanking"})
vim.keymap.set("x", "p", [["_dP]], {desc = "Paste over selected text"})
vim.keymap.set("v", "<C-C>", [["+y]])
vim.keymap.set("n", "<C-C>", [["+yy]])
vim.keymap.set({"n", "v"}, "<C-V>", [["+p]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-L>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Increment and Decrement Numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number Under Cursor" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number Under Cursor" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Balance Splits" })
vim.keymap.set("n", "<leader>sx", ":close <CR>", { desc = "Close Split" })
vim.keymap.set("n", "<leader>s|", "<C-w>v", { desc = "Split Vertically" })
vim.keymap.set("n", "<leader>s-", "<C-w>s", { desc = "Split Horizontally" })
vim.keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Balance Splits" })

vim.keymap.set("n", "<leader>to", ":tabonly <CR>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader>tt", ":tabnew <CR>", { desc = "Open New Tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose <CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tn", ":tabnext <CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>tp", ":tabprevious <CR>", { desc = "Previous Tab" })
