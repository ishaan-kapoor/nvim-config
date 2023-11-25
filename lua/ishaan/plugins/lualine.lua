local plugin = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "folke/noice.nvim",
        { "nvim-tree/nvim-web-devicons", lazy=true },
    },
    event = "VeryLazy",
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
    local buf_clients = vim.lsp.get_clients({bufnr=0})
    local buf_client_names = {}
    for _, client in pairs(buf_clients) do table.insert(buf_client_names, client.name) end
    return table.concat(buf_client_names, '|')
end

local bottom_section_sepatators = { left = "", right = "" }
local top_section_sepatators = { left = "", right = "" }
local emptySeparators = { left = "", right = "" }
local mid_component_sepatators = { left = '', right = '' }
local mid_section_sepatators = { left = '', right = '' }
local pipeSeparators = { left = "|", right = "|" }
local bottom_component_sepatators = { left = "", right = "" }
local top_component_sepatators = { left = "", right = "" }

plugin.opts = {
    options = {
        icons_enabled = true,
        theme = "tokyonight",
        -- theme = 'auto',
        -- section_separators = bottom_section_sepatators,
        section_separators = emptySeparators,
        component_separators = emptySeparators,
        disabled_filetypes = {
            statusline = {"NvimTree"},
            winbar = {},
        },
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
            { "%S", color = { fg = "#ff9e64" }},
        },
        lualine_x = {
            -- { "filetype", component_separators = bottom_component_sepatators },
            { "filetype", component_separators = pipeSeparators },
            { IrregularWhitespace }
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
        lualine_a = { "buffers" },
        -- lualine_a = {{ "buffers", section_separators = top_section_sepatators, component_separators = emptySeparators }},
        -- lualine_y = {{ "windows", section_separators = top_section_sepatators, component_separators = emptySeparators }},
        -- lualine_z = {{ "tabs", section_separators = top_section_sepatators, component_separators = emptySeparators }},
        lualine_z = { "tabs" },
    },
    winbar = {
        -- lualine_b = {{ "filename", path=1, file_status=true, section_separators = mid_section_sepatators, component_separators = mid_component_sepatators }},
        lualine_b = {{ "filename", path=1, file_status=true }},
    },
    inactive_winbar = {
        -- lualine_b = {{ "filename", path=1, file_status=true, section_separators = mid_section_sepatators, component_separators = mid_component_sepatators }},
        -- lualine_y = {{ "filesize", section_separators = mid_section_sepatators, component_separators = mid_component_sepatators }},
        -- lualine_z = {{ "location", section_separators = mid_section_sepatators, component_separators = mid_component_sepatators }},
        lualine_b = {{ "filename", path=1, file_status=true }},
        lualine_y = { "filesize" },
        lualine_z = { "location" },
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
            local timer = vim.uv.new_timer()
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
