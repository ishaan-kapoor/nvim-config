function ApplyTransparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = nil })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
  vim.api.nvim_set_hl(0, "Whitespace", { bg = nil })
  vim.api.nvim_set_hl(0, "SpecialKey", { bg = nil })
  vim.api.nvim_set_hl(0, "NonText", { bg = nil })
end

function EDIT_NVIMRC()
  require("plenary.reload").reload_module("telescope")
  require("telescope.builtin").find_files(require('telescope.themes').get_dropdown({
    prompt_title = "~ nvimrc ~",
    cwd = "~/.config/nvim",
    shorten_path = true,
    no_ignore = true,
    no_parent_ignore = true,
    layout_strategy = "horizontal",
    height = 10,
  }))
end

function LoadSession()
  local actions = require "telescope.actions"
  local session_dir = "~/.config/nvim/sessions/"

  local opts = require("telescope.themes").get_dropdown {
    prompt_title = "~ Saved Sessions ~",
    cwd = session_dir,
    shorten_path = true,
    no_ignore = true,
    no_parent_ignore = true,
    layout_strategy = "horizontal",
    height = 10,
  }
  opts.attach_mappings = function(prompt_bufnr, map)
    actions.select_default:replace(function()
      actions.close(prompt_bufnr)
      vim.cmd("source " .. session_dir .. require("telescope.actions.state").get_selected_entry().value)
    end)
    return true
  end
  require("telescope.builtin").find_files(opts)
end

function ColorschemeChange(transparent)
  local pickers = require "telescope.pickers"
  local finders = require "telescope.finders"
  local conf = require("telescope.config").values
  local actions = require "telescope.actions"
  local action_state = require "telescope.actions.state"

  local opts = require("telescope.themes").get_dropdown {}
  opts.transparent = transparent

  pickers.new(opts, {
    finder = finders.new_table { results = vim.fn.getcompletion("", "color") },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        ApplyColorScheme(action_state.get_selected_entry().value, opts)
      end)

      actions.move_selection_next:enhance {
        post = function()
          ApplyColorScheme(action_state.get_selected_entry().value, opts)
        end,
      }
      actions.move_selection_previous:enhance {
        post = function()
          ApplyColorScheme(action_state.get_selected_entry().value, opts)
        end,
      }
      return true
    end,
  }):find()
  ApplyTransparency()
end

function ApplyColorScheme(color, opts)
  opts = opts or {}
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  if opts.transparent then ApplyTransparency() end
end

function RandomColorScheme()
  ApplyColorScheme(vim.api.nvim_eval("dark_colorschemes[rand() % len(dark_colorschemes)]"))
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

function SwapBool()
  local c = vim.api.nvim_get_current_line()
  local ft = vim.bo.filetype
  local subs;
  if ft == "python" then
    subs = c:match("True") and c:gsub("True", "False") or c:gsub("False", "True")
  else
    subs = c:match("true") and c:gsub("true", "false") or c:gsub("false", "true")
  end
  vim.api.nvim_set_current_line(subs)
end

function OpenURL(url)
  local url = url or vim.fn.expand('<cfile>', nil, nil)
  if not url:match("http") then
    url = "https://github.com/" .. url
  end
  vim.notify("Going to " .. url, vim.log.levels.INFO, { title = "Opening browser..." })
  vim.fn.jobstart({ "explorer.exe", "microsoft-edge:"..url }, { on_exit = function() end })
end

local function set_quit_maps()
  vim.keymap.set('n', 'q', ':bd!<CR>', { buffer = true, silent = true })
  vim.keymap.set('n', '<ESC>', ':bd!<CR>', { buffer = true, silent = true })
  vim.keymap.set('n', '<C-c>', ':bd!<CR>', { buffer = true, silent = true })
end

function CheatSheet(query)
  query = query or vim.fn.input("Search: ")
  query = table.concat(vim.split(query, " "), "+")
  local cmd = ('curl "https://cht.sh/%s/%s"'):format(vim.bo.ft, query)
  vim.cmd("split | term " .. cmd)
  vim.cmd [[stopinsert!]]
  set_quit_maps()
end

function RunCPCode(timeout)
  vim.cmd(":up")
  local ft = vim.bo.filetype
  local statusCode = 0
  timeout = timeout or 3
  if ft == "python" then
    vim.cmd("!timeout " .. timeout .. " python3 % < input.txt &> output.txt")
    if (statusCode == 124) then vim.cmd("!echo 'TimeOut' > output.txt") end
    return
  end
  local compiler
  if ft == "cpp" then
    compiler = "g++"
  elseif ft == "c" then
    compiler = "gcc"
  elseif ft == "rust" then
    compiler = "rustc"
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
  if ft == "cpp" then
    compiler = "g++"
  elseif ft == "c" then
    compiler = "gcc"
  elseif ft == "rust" then
    compiler = "rustc"
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
      args = { vim.fn.expand("%"), "-o", vim.fn.expand("%<") },
      stdio = { nil, nil, error_pipe }
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
  local expectedSpaces = vim.opt.softtabstop:get();
  if vim.tbl_contains(spaceFtsOnly, ft) then
    expectedSpaces = spaceFiletypes[ft]
  end
  if (usesSpaces and width ~= expectedSpaces) then
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

function LSP_onAttach(client, bufnr)
  local telescope = require("telescope.builtin")
  -- require("lsp_signature").on_attach({
  --     bind = true,
  --     toggle_key = '<M-x>',
  --     floating_window = false,
  --     select_signature_key = '<M-j>',
  --     move_cursor_key = '<M-f>',
  --     handler_opts = { border = "shadow" }
  -- }, bufnr)
  print("LSP atached")

  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      vim.diagnostic.open_float(nil, {
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        focusable = false,
        border = 'rounded',
        source = 'always',
        prefix = ' ',
        scope = 'cursor',
      })
    end
  })

  -- set keybinds
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true, buffer = bufnr, desc = "LSP Keybinds" } -- keybind options
  local function quickfix()
    vim.lsp.buf.code_action({
      filter = function(a) return a.isPreferred end,
      apply = true
    })
  end
  opts.desc = "Quick Fix"; map('n', '<leader>qf', quickfix, opts)
  opts.desc = "Restart LSP"; map('n', "<leader>lR", ":LspRestart<CR>", opts);
  -- opts.desc = "Format Document"; map('n', "<leader>gf", vim.lsp.buf.format, opts);
  opts.desc = "Go to Definition"; map('n', "gd", telescope.lsp_definitions, opts);                -- map('n', "gd", vim.lsp.buf.definition, opts)
  opts.desc = "Go to Declaration"; map('n', "gD", vim.lsp.buf.declaration, opts);
  opts.desc = "List Implementations"; map('n', "gI", telescope.lsp_implementations, opts);        -- map('n', "gi", vim.lsp.buf.implementation, opts)
  opts.desc = "List References"; map('n', "gr", telescope.lsp_references, opts);                  -- map('n', "gr", vim.lsp.buf.references, opts)
  opts.desc = "List Symbols"; map('n', "fs", telescope.lsp_document_symbols, opts);
  opts.desc = "Telescope type Definitions"; map('n', "gt", telescope.lsp_type_definitions, opts); -- map('n', "gt", vim.lsp.buf.type_definition, opts)
  opts.desc = "LSP Hover"; map('n', "K", vim.lsp.buf.hover, opts);
  opts.desc = "LSP Workspace Symbol"; map('n', "<leader>ws", vim.lsp.buf.workspace_symbol, opts);
  -- opts.desc = "Open Diagnostic Float"; map('n', "<leader>vd", vim.diagnostic.open_float, opts); -- autocommand executed on cursor hold
  -- opts.desc = "Telescope Diagnostics"; map('n', "<leader>vD", telescope.diagnostics, opts) -- <leader>fd in Telescope
  opts.desc = "next Diagnostic"; map('n', "]d", vim.diagnostic.goto_next, opts);
  opts.desc = "prev Diagnostic"; map('n', "[d", vim.diagnostic.goto_prev, opts);
  opts.desc = "LSP Code Action"; map({ 'n', "v" }, "<leader>ca", vim.lsp.buf.code_action, opts);
  opts.desc = "LSP Rename in all files"; map('n', "<leader>rn", vim.lsp.buf.rename, opts);
  opts.desc = "Signature help"; map('n', "<leader>h", vim.lsp.buf.signature_help, opts);
  opts.desc = "Add Workspace Folder"; map('n', "<leader>wa", vim.lsp.buf.add_workspace_folder, opts);
  opts.desc = "Remove Workspace folder"; map('n', "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts);
  opts.desc = "List workspace Folder"; map('n', "<leader>wl",
    function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts);
  -- opts.desc = "Show line diagnostics"; map('n', "<leader>l", vim.lsp.diagnostic.show_line_diagnostics, opts)
  -- opts.desc = "Set Loclist"; map('n', "<leader>q", vim.lsp.diagnostic.set_loclist, opts)
  -- map('n', "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
  -- map('n', "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
  -- map('n', "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
  -- map('n', "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
  -- map('n', "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  -- map('n', "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
  -- map('n', "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  -- map('n', "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  -- map('n', "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
  -- map('n', "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
end

function GetVisualSelection()
  local modeInfo = vim.api.nvim_get_mode()
  local mode = modeInfo.mode

  local cursor = vim.api.nvim_win_get_cursor(0)
  local cline, ccol = cursor[1], cursor[2]
  local vline, vcol = vim.fn.line('v'), vim.fn.col('v')

  local sline, scol
  local eline, ecol
  if cline == vline then
    if ccol <= vcol then
      sline, scol = cline, ccol
      eline, ecol = vline, vcol
      scol = scol + 1
    else
      sline, scol = vline, vcol
      eline, ecol = cline, ccol
      ecol = ecol + 1
    end
  elseif cline < vline then
    sline, scol = cline, ccol
    eline, ecol = vline, vcol
    scol = scol + 1
  else
    sline, scol = vline, vcol
    eline, ecol = cline, ccol
    ecol = ecol + 1
  end

  if mode == "V" or mode == "CTRL-V" or mode == "\22" then
    scol = 1
    ecol = nil
  end

  local lines = vim.api.nvim_buf_get_lines(0, sline - 1, eline, 0)
  if #lines == 0 then return end

  local startText, endText
  if #lines == 1 then
    startText = string.sub(lines[1], scol, ecol)
  else
    startText = string.sub(lines[1], scol)
    endText = string.sub(lines[#lines], 1, ecol)
  end

  local selection = { startText }
  if #lines > 2 then
    vim.list_extend(selection, vim.list_slice(lines, 2, #lines - 1))
  end
  table.insert(selection, endText)

  return selection
end
