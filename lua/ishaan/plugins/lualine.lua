local plugin = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "folke/noice.nvim",
        { "nvim-tree/nvim-web-devicons", lazy=true },
    },
    event = "VeryLazy",
    -- lazy = true,
    priority = 100,
    -- config = true
}

local function show_macro_recording()
    local recording_register = vim.fn.reg_recording()
    if recording_register ~= '' then
        return "Recording @" .. recording_register
    else
        return ""
    end
end

local function noice_command()
    return require("noice").api.status.command.get()
    -- return "noice"
end

local function noice_command_status()
    return require("noice").api.status.command.has()
    -- return true
end

local function lsp_progress()
    local messages = vim.lsp.util.get_progress_messages()
    if #messages == 0 then
        return
    end
    local status = {}
    for _, msg in pairs(messages) do
        table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
    end
    local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    local ms = vim.loop.hrtime() / 1000000
    local frame = math.floor(ms / 120) % #spinners
    return table.concat(status, " | ") .. " " .. spinners[frame + 1]
end

-- displays irregular indentation and linebreaks, displays nothing when all is good
-- selene: allow(high_cyclomatic_complexity)
local function irregularWhitespace()
    -- USER CONFIG
    -- filetypes and the number of spaces they use. Omit or set to nil to use tabs for that filetype.
    local spaceFiletypes = { python = 4, lua = 4 }
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

--------------------------------------------------------------------------------

-- only show the clock when fullscreen (= it covers the menubar clock)
local function clock()
    if vim.opt.columns:get() < 150 or vim.opt.lines:get() < 51 then return "" end

    local time = tostring(os.date()):sub(12, 16)
    if os.time() % 2 == 1 then time = time:gsub(":", " ") end -- make the `:` blink
    return time
end

local function cwd()
    local result = vim.fn.getcwd()
    local home = os.getenv("HOME")
    if home and vim.startswith(result, home) then result = "~" .. result:sub(home:len() + 1) end
    return result
end

local function lspServers()
    local buf_clients = vim.lsp.buf_get_clients()
    local buf_client_names = {}
    for _, client in pairs(buf_clients) do table.insert(buf_client_names, client.name) end
    return table.concat(buf_client_names, '|')
end

local bottom_section_sepatators = { left = "", right = "" }
local top_section_sepatators = { left = "", right = "" }
local emptySeparators = { left = "", right = "" }
local pipeSeparators = { left = "|", right = "|" }
local bottom_component_sepatators = { left = "", right = "" }
local top_component_sepatators = { left = "", right = "" }

plugin.opts = {
    options = {
        icons_enabled = true,
        theme = 'auto',
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        section_separators = bottom_section_sepatators,
        component_separators = emptySeparators,
        disabled_filetypes = {
            statusline = {"NvimTree"},
            winbar = {},
        },
        -- ignore_focus = {},
        ignore_focus = {
            "DressingInput",
            "DressingSelect",
            "ccc-ui",
            "TelescopePrompt",
        },
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            "mode",
            {"macro recording", fmt = show_macro_recording},
        },
        lualine_b = {
            { "lsp servers", fmt=lspServers },
            { "diagnostics", sources = { "nvim_diagnostic" }, },
        },
        lualine_c = {
            { "Current Working Directory", fmt=cwd },
            { "last executed command", fmt=noice_command, cond = noice_command_status, color = { fg = "#ff9e64" } },
            {"lsp progress", fmt = lsp_progress}
        },
        lualine_x = {
            { "filetype", component_separators = bottom_component_sepatators },
            { irregularWhitespace }
        },
        lualine_y = {
            "progress",
            {"of", fmt = function() return "of" end},
            "filesize",
        },
        lualine_z = { "location", {"clock", fmt=clock} }
    },
    inactive_sections = {},
    tabline = {
        lualine_a = { { "buffers", section_separators = top_section_sepatators, component_separators = emptySeparators } },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = { { "windows", section_separators = top_section_sepatators, component_separators = emptySeparators } },
        lualine_z = { { "tabs", section_separators = top_section_sepatators, component_separators = emptySeparators } },
    },
    winbar = {},
    inactive_winbar = {
        lualine_a = {},
        lualine_b = {{ "filename", path=1, file_status=true }},
        lualine_c = {},
        lualine_x = {},
        lualine_y = { "filesize" },
        lualine_z = { "location" }
    },
    extensions = {},
}


function plugin.config()
    local lualine = require("lualine")
    lualine.setup(plugin.opts)

    vim.api.nvim_create_autocmd("RecordingEnter", {
        callback = function()
            lualine.refresh({ place = {"statusline"} })
        end,
    })

    vim.api.nvim_create_autocmd("RecordingLeave", {
        callback = function()
            local timer = vim.loop.new_timer()
            timer:start(
                50, 0,
                vim.schedule_wrap(function()
                    lualine.refresh({ place = {"statusline"} })
                end)
            )
        end,
    })
end

return plugin
