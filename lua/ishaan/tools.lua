function ApplyTransparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = nil })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
    vim.api.nvim_set_hl(0, "Whitespace", { bg = nil })
    vim.api.nvim_set_hl(0, "SpecialKey", { bg = nil })
    vim.api.nvim_set_hl(0, "NonText", { bg = nil })
end

function ApplyColorScheme(color, opts)
    opts = opts or {}
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
    if opts.transparent then
        ApplyTransparency()
    end
end

function RunCPCode()
    vim.cmd(":up")
    local ft = vim.bo.filetype
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

function Compile()
    vim.cmd(":up")
    -- local buf = vim.api.nvim_get_current_buf()
    -- local ft = vim.api.nvim_buf_get_option(buf, "filetype")
    local ft = vim.bo.filetype
    if ft == "cpp" then
        vim.cmd("!g++ % -o %<")
    elseif ft == "c" then
        vim.cmd("!gcc % -o %<")
    elseif ft == "rust" then
        vim.cmd("!rustc % -o %<")
    end
end

function RunCode()
    Compile()
    local ft = vim.bo.filetype
    if ft == "python" then
        vim.cmd("!python3 %")
    elseif ((ft == "cpp") or (ft == "c")) or (ft == "rust") then
        vim.cmd("! ./%<")
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

function Export2VSCode()
  local buffers = vim.api.nvim_list_bufs()
  local fileNames = {}

  for _, buffer in ipairs(buffers) do
    if (vim.api.nvim_buf_is_valid(buffer) and vim.bo[buffer].buflisted) then
      local fileName = vim.api.nvim_buf_get_name(buffer)

      if (vim.api.nvim_get_current_buf() == buffer) then
        local location = vim.api.nvim_win_get_cursor(0)
        fileName = fileName .. ":" .. location[1] .. ":" .. location[2] + 1
        table.insert(fileNames, 1, fileName)
      else
        table.insert(fileNames, fileName)
      end
    end
  end

  local cwd = vim.fn.getcwd()
  vim.cmd("!code -g " .. cwd .. " " .. table.concat(fileNames, " "))
end

function CtrlD_VSCode()
    local mode = vim.api.nvim_get_mode().mode
    local current_word;
    if mode == 'n' then
        current_word = vim.call("expand", "<cword>")
    elseif mode == 'v' then
        local a_reg = vim.fn.getreg("a")
        vim.cmd("normal! \"ay")
        current_word = vim.fn.getreg("a")
        vim.fn.setreg("a", a_reg)
    else return
    end
    local escape_chars = '"' .. vim.call("escape", "!\"#$%&'()*+,-./:;<=>?@[\\]^`{|}~",'"/\\|') .. '"'
    local replace_with = vim.fn.input("Replace " .. current_word .. " with: ")
    current_word = vim.call("escape", current_word, escape_chars) 
    vim.cmd("%s/\\v" .. current_word .. "/" .. replace_with .. "/gc")
end

local sessions_dir = vim.fn.expand("~/.config/nvim/sessions")
function SaveSession()
    local session_name = vim.fn.input("Session name: ")
    local session_file = sessions_dir .. "/" .. session_name .. ".vim"
    local session_exists = vim.fn.filereadable(session_file)
    if session_exists == 1 then
        local confirm = vim.fn.confirm("Session already exists. Overwrite?", "&Yes\n&No", 2)
        -- if not confirm then print message
        if confirm == 2 then
            print("Session not saved")
            return
        end
    end
    vim.cmd("mksession! " .. session_file)
end

function LoadSession()
    local session_name = vim.fn.input("Session name: ")
    local session_file = sessions_dir .. "/" .. session_name .. ".vim"
    local session_exists = vim.fn.filereadable(session_file)
    if session_exists == 0 then
        print("Session does not exist")
        return
    end
    vim.cmd("source " .. session_file)
end

function WriteSudo()
    vim.cmd("w !sudo tee % > /dev/null")
end


-- displays irregular indentation and linebreaks, displays nothing when all is good
-- selene: allow(high_cyclomatic_complexity)
function IrregularWhitespace()
    -- USER CONFIG
    -- filetypes and the number of spaces they use. Omit or set to nil to use tabs for that filetype.
    local spaceFiletypes = { python = 4, lua = 4, c = 4, cpp = 4, rust = 4, javascript = 2, typescript = 2, bash = 2 }
    local ignoredFiletypes = { "css", "markdown", "gitcommit" }
    local linebreakType = "unix" ---@type "unix" | "mac" | "dos"

    -- vars & guard
    local usesSpaces = vim.bo.expandtab
    local usesTabs = not vim.bo.expandtab
    local brUsed = vim.bo.fileformat
    local ft = vim.bo.filetype
    local width = vim.bo.tabstop
    if vim.tbl_contains(ignoredFiletypes, ft) or vim.fn.mode() ~= "n" or vim.bo.buftype ~= "" then return "" end

    -- non-default indentation setting (e.g. changed via indent-o-matic)
    local nonDefaultSetting = ""
    local spaceFtsOnly = vim.tbl_keys(spaceFiletypes)
    if
        (usesSpaces and not vim.tbl_contains(spaceFtsOnly, ft))
        or (usesSpaces and width ~= spaceFiletypes[ft])
    then
        nonDefaultSetting = " " .. tostring(width) .. " 󱁐 "
    elseif usesTabs and vim.tbl_contains(spaceFtsOnly, ft) then
        nonDefaultSetting = " 󰌒 " .. tostring(width)(" ")
    end

    -- wrong or mixed indentation
    local hasTabs = vim.fn.search("^\t", "nw") > 0
    local hasSpaces = vim.fn.search("^ ", "nw") > 0
    -- exception, jsdocs: space not followed by "*"
    if vim.bo.filetype == "javascript" then hasSpaces = vim.fn.search([[^ \(\*\)\@!]], "nw") > 0 end
    local wrongIndent = ""
    if usesTabs and hasSpaces then
        wrongIndent = " 󱁐 "
    elseif usesSpaces and hasTabs then
        wrongIndent = " 󰌒 "
    elseif hasTabs and hasSpaces then
        wrongIndent = " 󱁐 + 󰌒 "
    end

    -- line breaks
    local linebreakIcon = ""
    if brUsed ~= linebreakType then
        if brUsed == "unix" then
            linebreakIcon = " 󰌑 "
        elseif brUsed == "mac" then
            linebreakIcon = " 󰌑 "
        elseif brUsed == "dos" then
            linebreakIcon = " 󰌑 "
        end
    end

    return nonDefaultSetting .. wrongIndent .. linebreakIcon
end

