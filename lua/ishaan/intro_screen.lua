-- github.com/eoh-bse/minintro.nvim
-- local minintro_opened = false

local intro_logo = {
  "                                                       ",
  "                                                       ",
  "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
  "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
  "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
  "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
  "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
  "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
  "                                                       ",
  "                    (Stable) NVIM v0.10.3-dev-650dcbb  ",
  "                              Released: 7th Dec, 2024  ",
  "                                                       ",
  "                                                       ",
  "         󰩈  Exit                      q                ",
  "         󰋖  Help                      h                ",
  "           Color                     l                ",
  "           Explore                   e                ",
  "           Plugins                   p                ",
  "           New File                  n                ",
  "           Edit Config               c                ",
  "           Check Health              d                ",
  "         󰯌  Load Session              s                ",
  "         󱫙  Frequent Files            f                ",
  "                                                       ",
  "                                                       ",
  "    :help news<Enter> to see changes in v0.10          ",
  "    :help iccf<Enter> to help poor children in uganda  ",
}

table.insert(intro_logo, 2, os.date("%A, %d %B'%y %H:%M:%S %p"))
local PLUGIN_NAME = "dashboard" -- "minintro"
local INTRO_LOGO_HEIGHT = #intro_logo
local INTRO_LOGO_WIDTH = #intro_logo[1]

local autocmd_group = vim.api.nvim_create_augroup(PLUGIN_NAME, {})
local highlight_ns_id = vim.api.nvim_create_namespace(PLUGIN_NAME)
local minintro_buff = -1

local function edit_config()
  vim.cmd("cd ~/.config/nvim/lua/ishaan")
  vim.cmd("NvimTreeFindFileToggle")
  require("telescope").extensions.frecency.frecency({workspace = "CWD"})
  -- EDIT_NVIMRC()
end
local function set_keymaps()
  local keymap_opts = { noremap = true, silent = true, buffer = true }
  vim.keymap.set('n', "q", ":q<CR>", keymap_opts)
  vim.keymap.set('n', "h", ":Telescope help_tags<CR>", keymap_opts)
  vim.keymap.set('n', "l", RandomColorScheme, keymap_opts)
  vim.keymap.set('n', "e", ":NvimTreeFindFileToggle<CR>", keymap_opts)
  vim.keymap.set('n', "p", ":Lazy<CR>", keymap_opts)
  vim.keymap.set('n', "n", ":enew<CR>", keymap_opts)
  vim.keymap.set('n', "c", edit_config, keymap_opts)
  vim.keymap.set('n', "d", ":checkhealth<CR>", keymap_opts)
  vim.keymap.set('n', "s", LoadSession, keymap_opts)
  vim.keymap.set('n', "f", ":Telescope frecency<CR>", keymap_opts)
end

local function unlock_buf(buf)
  vim.api.nvim_set_option_value("modifiable", true, { buf = buf })
end

local function lock_buf(buf)
  vim.api.nvim_set_option_value("modifiable", false, { buf = buf })
end

local function draw_minintro(buf, logo_width, logo_height)
  local window = vim.fn.bufwinid(buf)
  local screen_width = vim.api.nvim_win_get_width(window)
  local screen_height = vim.api.nvim_win_get_height(window) - vim.opt.cmdheight:get()

  local start_col = math.floor((screen_width - logo_width) / 2)
  local start_row = math.floor((screen_height - logo_height) / 2)
  if (start_col < 0 or start_row < 0) then return end

  local top_space = {}
  for _ = 1, start_row do table.insert(top_space, "") end

  local col_offset_spaces = {}
  for _ = 1, start_col do table.insert(col_offset_spaces, " ") end
  local col_offset = table.concat(col_offset_spaces, '')

  local adjusted_logo = {}
  for _, line in ipairs(intro_logo) do
    table.insert(adjusted_logo, col_offset .. line)
  end

  -- local logo_end_row =start_row+INTRO_LOGO_HEIGHT
  -- local bottom_space = {}
  -- for _ = logo_end_row, screen_height-2 do table.insert(bottom_space, "") end

  unlock_buf(buf)
  vim.api.nvim_buf_set_lines(buf, 1, 1, true, top_space)
  vim.api.nvim_buf_set_lines(buf, start_row, start_row, true, adjusted_logo)
  -- vim.api.nvim_buf_set_lines(buf, logo_end_row, logo_end_row, true, bottom_space)
  lock_buf(buf)

  vim.api.nvim_buf_set_extmark(buf, highlight_ns_id, start_row, start_col, {
    -- end_row = screen_height-2,
    end_row = start_row + INTRO_LOGO_HEIGHT,
    hl_group = "Default"
  })
end

local function create_and_set_minintro_buf(default_buff)
  local intro_buff = vim.api.nvim_create_buf(false, false)
  vim.api.nvim_buf_set_name(intro_buff, PLUGIN_NAME)
  vim.api.nvim_set_option_value("bufhidden", "wipe", { buf = intro_buff })
  vim.api.nvim_set_option_value("buftype", "nofile", { buf = intro_buff })
  vim.api.nvim_set_option_value("filetype", PLUGIN_NAME, { buf = intro_buff })
  vim.api.nvim_set_option_value("swapfile", false, { buf = intro_buff })

  vim.api.nvim_set_current_buf(intro_buff)
  vim.api.nvim_buf_delete(default_buff, { force = true })

  return intro_buff
end

local function set_options()
  vim.opt_local.number = false            -- disable line numbers
  vim.opt_local.relativenumber = false    -- disable relative line numbers
  vim.opt_local.list = false              -- disable displaying whitespace
  vim.opt_local.fillchars = { eob = ' ' } -- do not display "~" on each new line
  vim.opt_local.colorcolumn = '0'         -- disable colorcolumn
  vim.opt_local.foldcolumn = '0'          -- disable foldcolumn
  vim.opt_local.matchpairs = ''
  vim.opt_local.cursorline = false
  vim.opt_local.cursorcolumn = false
  vim.opt_local.wrap = false
  vim.opt_local.spell = false
  vim.opt_local.readonly = false
  vim.opt_local.signcolumn = 'no'
  vim.opt_local.winbar = ''
end

local function redraw()
  unlock_buf(minintro_buff)
  vim.api.nvim_buf_set_lines(minintro_buff, 0, -1, true, {})
  lock_buf(minintro_buff)
  draw_minintro(minintro_buff, INTRO_LOGO_WIDTH, INTRO_LOGO_HEIGHT)
end

local function display_minintro(payload)
  local is_dir = vim.fn.isdirectory(payload.file) == 1

  local default_buff = vim.api.nvim_get_current_buf()
  local default_buff_name = vim.api.nvim_buf_get_name(default_buff)
  local default_buff_filetype = vim.api.nvim_get_option_value("filetype", { buf = default_buff })
  if is_dir or (default_buff_filetype ~= "") or (default_buff_name ~= "") then return end

  minintro_buff = create_and_set_minintro_buf(default_buff)
  set_options()
  set_keymaps()

  draw_minintro(minintro_buff, INTRO_LOGO_WIDTH, INTRO_LOGO_HEIGHT)

  -- vim.api.nvim_create_autocmd({ "WinResized", "VimResized" }, {
  --   group = autocmd_group,
  --   buffer = minintro_buff,
  --   callback = redraw
  -- })
end

local function setup(options)
  -- options = options or {}
  -- vim.api.nvim_set_hl(highlight_ns_id, "Default", { fg = options.color or DEFAULT_COLOR })
  -- vim.api.nvim_set_hl_ns(highlight_ns_id)

  vim.api.nvim_create_autocmd("VimEnter", {
    group = autocmd_group,
    callback = display_minintro,
    once = true
  })
end

function INTRO_SCREEN()
  local default_buff = vim.api.nvim_get_current_buf()
  minintro_buff = create_and_set_minintro_buf(default_buff)
  set_options()

  draw_minintro(minintro_buff, INTRO_LOGO_WIDTH, INTRO_LOGO_HEIGHT)
end

vim.cmd("command! Intro lua INTRO_SCREEN()")
setup()
