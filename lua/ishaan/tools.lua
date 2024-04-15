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
  if opts.transparent then ApplyTransparency() end
end

function RandomColorScheme()
  ApplyColorScheme(vim.api.nvim_eval("dark_colorschemes[rand() % n]"))
end

-- function to delete all buffers except current ones
function DeleteOtherBuffers()
  local currentBufferNumber = vim.fn.bufnr('%')
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  for _, buffer in ipairs(buffers) do
    local bufferNumber = buffer.bufnr
    if bufferNumber ~= currentBufferNumber then
      vim.api.nvim_buf_delete(bufferNumber, { force = false })
      -- vim.api.nvim_buf_delete(bufferNumber, { force = true })
    end
  end
end

function RunCPCode(timeout)
  vim.cmd(":up")
  local ft = vim.bo.filetype
  local statusCode = 0
  timeout = timeout or 2
  if ft == "python" then
    vim.cmd("!timeout " .. timeout .. " python3 % < input.txt &> output.txt")
    if (statusCode == 124) then vim.cmd("!echo 'TimeOut' > output.txt") end
    return
  end
  local compiler
  if ft == "cpp" then compiler = "g++"
  elseif ft == "c" then compiler = "gcc"
  elseif ft == "rust" then compiler = "rustc"
  end
  vim.cmd("!" .. compiler .. " % -o %< &> output.txt")
  statusCode = vim.v.shell_error
  if (statusCode ~= 0) then return end
  vim.cmd("!timeout " .. timeout .. " ./%< < input.txt &> output.txt")
  statusCode = vim.v.shell_error
  vim.cmd("!rm %<")
  if (statusCode == 124) then vim.cmd("!echo 'TimeOut' > output.txt") end
end

function Compile(terminal, debug)
  terminal = terminal or false
  debug = debug or false
  vim.cmd("up")
  -- local buf = vim.api.nvim_get_current_buf()
  -- local ft = vim.api.nvim_buf_get_option(buf, "filetype")
  local ft = vim.bo.filetype
  if ft == "java" then
    -- Rest is handled by ~/.config/nvim/after/ftplugin/java.lua
    vim.cmd("make")
    return;
  end
  local compiler
  if ft == "cpp" then compiler = "g++"
  elseif ft == "c" then compiler = "gcc"
  elseif ft == "rust" then compiler = "rustc"
  else
    print("Couldn't compile FileType: " .. ft)
    return;
  end
  if terminal then
    local command = compiler .. " % -o %<"
    if debug then command = command .. " -g" end
    vim.cmd("sp")
    vim.cmd("term " .. command)
    vim.cmd("startinsert")
  else
    -- vim.cmd("!" .. command)
    local uv = vim.loop
    local error_pipe = uv.new_pipe()
    local opts = {
      args = {vim.fn.expand("%"), "-o", vim.fn.expand("%<")},
      stdio = {nil, nil, error_pipe}
    }
    local handler
    local on_exit = function(status)
      if status == 0 then
        print("Compiled")
      else
        print(status)
        uv.read_start(error_pipe, function(_, data) if data then print(data) end end)
      end
      uv.close(handler)
    end
    handler = uv.spawn(compiler, opts, on_exit)
  end
end

local function has_value(tab, val)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end
  return false
end

local function is_executable(file)
  local v = vim.api.nvim_exec2("!file " .. file, { output = true })
  if string.find(v.output, "executable", 0, true) then
    return true;
  else
    return false;
  end
end

local function starts_with(str, substring)
  return string.sub(str, 1, string.len(substring)) == substring
end

function RunCode(terminal)
  terminal = terminal or false
  local command;
  vim.cmd("up")
  if is_executable(vim.fn.expand("%:p")) then
    command = "%:p"
  else
    local ft = vim.bo.filetype
    local compiled_langugages = { "cpp", "c", "rust", "java" }
    if ft == "python" then
      command = "python3 -u %:p"
    elseif ft == "java" then
      local content = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1];
      if starts_with(content, "package") then
        Compile(terminal)
        -- command = "java -cp out %:p"
        -- command = "javac %:p && java " .. string.match(content, "package%s+(%S+)")
        -- else
        -- command = "java %:p"
        -- command = "javac %:t && java %:t:r"
      end
      command = "java -cp out %:p"
    elseif has_value(compiled_langugages, ft) then
      Compile()
      command = "./%<"
    else
      print("Couldn't run FileType: " .. ft)
      return;
    end
    if terminal then
      vim.cmd("sp")
      vim.cmd("term " .. command)
      vim.cmd("startinsert")
    else
      vim.cmd("!" .. command)
    end
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

  vim.keymap.set('n', "<M-/>", RunCPCode, { noremap = true, desc = "Run the Code in CP way" })
  vim.keymap.set('n', "<C-_>", DiffOutput, { noremap = true, desc = "Diff output with expected" })
end

function DiffOutput()
  vim.cmd("tabe input.txt")
  vim.cmd("vsplit")
  vim.cmd("e expected.txt")
  vim.cmd("diffthis")
  vim.cmd("split")
  vim.cmd("e output.txt")
  vim.cmd("diffthis")
  vim.cmd("norm zR")
  vim.cmd("wincmd k")
  vim.cmd("norm zR")
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
  else
    return
  end
  local escape_chars = '"' .. vim.call("escape", "!\"#$%&'()*+,-./:;<=>?@[\\]^`{|}~", '"/\\|') .. '"'
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
  local spaceFiletypes = { python = 4, cpp = 2, c = 2, javascriptreact = 2, typescriptreact = 2, javascript = 2, typescript = 2, bash = 2, shell = 2, lua = 2, rust = 4, java = 2 }
  local ignoredFiletypes = { "css", "markdown", "gitcommit", "text" }
  local linebreakType = "unix" ---@type "unix" | "mac" | "dos"

  -- vars & guard
  local usesSpaces = vim.bo.expandtab
  local usesTabs = not vim.bo.expandtab
  local brUsed = vim.bo.fileformat
  local ft = vim.bo.filetype
  local width = vim.bo.softtabstop
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

function BlockRepeatedMotion()
  local id
  local tolerance = 10
  local ok = true
  for _, key in ipairs({ "h", "j", "k", "l" }) do
    local count = 0
    local timer = assert(vim.loop.new_timer())
    local map = key
    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        count = 0
      end
      if count >= tolerance then
        ok, id = pcall(vim.notify, "Hold it Cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          keep = function()
            return count >= tolerance
          end,
        })
        if not ok then
          id = nil
          return map
        end
      else
        count = count + 1
        timer:start(2000, 0, function() count = 0 end)
        return map
      end
    end, { expr = true, silent = true })
  end
end
