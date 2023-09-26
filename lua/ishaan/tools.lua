function ApplyTransparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = nil })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
    vim.api.nvim_set_hl(0, "Whitespace", { bg = nil })
    vim.api.nvim_set_hl(0, "SpecialKey", { bg = nil })
    vim.api.nvim_set_hl(0, "NonText", { bg = nil })
end

function ApplyColorScheme(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    ApplyTransparency()
end

function RunCPCode()
    local buf = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(buf, "filetype")
    if ft == "python" then
        vim.cmd("!python3 % < input.txt &> output.txt")
    elseif ft == "cpp" then
        vim.cmd("!g++ % -o %< &> output.txt")
        vim.cmd("! ./%< < input.txt &> output.txt")
        vim.cmd("!rm %<")
    elseif ft == "c" then
        vim.cmd("!gcc % -o %< &> output.txt && ./%< < input.txt &> output.txt && rm %<")
    elseif ft == "rust" then
        vim.cmd("!rustc % -o %< &> output.txt && ./%< < input.txt &> output.txt && rm %<")
    end
end

function RunCode()
    local buf = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(buf, "filetype")
    if ft == "python" then
        vim.cmd("!python3 %")
    elseif ft == "cpp" then
        vim.cmd("!g++ % -o %<")
        vim.cmd("! ./%<")
    elseif ft == "c" then
        vim.cmd("!gcc % -o %< && ./%<")
    elseif ft == "rust" then
        vim.cmd("!rustc % -o %< && ./%<")
    end
end

function CompetetiveProgramming()
    vim.cmd("vsplit")
    vim.cmd("e input.txt")

    vim.cmd("split")
    vim.cmd("e output.txt")

    -- vim.cmd("wincmd k")
    -- vim.cmd("vsplit")
    -- vim.cmd("e error.txt")
    --
    -- vim.cmd("wincmd j")
    vim.cmd("wincmd h")

    vim.keymap.set('n', "<M-/>", RunCPCode, {noremap = true, desc = "Run the Code in CP way"})

end

