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
    -- local buf = vim.api.nvim_get_current_buf()
    -- local ft = vim.api.nvim_buf_get_option(buf, "filetype")
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

function RunCode()
    vim.cmd(":up")
    local ft = vim.bo.filetype
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
