-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color18 = '#bdcace'
local Color10 = '#dd7404'
local Color6 = '#00aaaa'
local Color5 = '#a3adb1'
local Color7 = '#18ac31'
local Color11 = '#404141'
local Color3 = '#0f8fe4'
local Color8 = '#9244ec'
local Color1 = '#95abb0'
local Color2 = '#df3c3c'
local Color4 = '#d49408'
local Color13 = '#f3f4f5'
local Color16 = '#ebd8d9'
local Color19 = '#52C1DA'
local Color15 = '#dbebe4'
local Color0 = '#6b8d16'
local Color12 = '#e9ebed'
local Color9 = '#ec4476'
local Color14 = '#1f3a41'
local Color17 = '#cae7ee'

highlight('Type', nil, Color0, nil)
highlight('Comment', nil, Color1, 'italic')
highlight('Constant', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Repeat', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color6, nil)
highlight('String', nil, Color7, nil)
highlight('Type', nil, Color8, nil)
highlight('Identifier', nil, Color9, nil)
highlight('Number', nil, Color10, nil)
highlight('StatusLine', Color11, Color12, nil)
highlight('WildMenu', Color13, Color14, nil)
highlight('Pmenu', Color13, Color14, nil)
highlight('PmenuSel', Color14, Color13, nil)
highlight('PmenuThumb', Color13, Color14, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color13, Color14, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color12, Color1, nil)
highlight('TabLineSel', Color19, Color13, nil)
highlight('TabLineFill', Color12, Color1, nil)
highlight('TSPunctDelimiter', nil, Color14, nil)

link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('CursorLineNr', 'Identifier')
link('Operator', 'Keyword')
link('TSField', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSRepeat', 'Repeat')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('TSParameter', 'Constant')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('Repeat', 'Conditional')
link('TSTag', 'MyTag')
link('Folded', 'Comment')
link('Macro', 'Function')
link('TSProperty', 'TSField')
link('TSNumber', 'Number')
link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('TSFuncMacro', 'Macro')
link('TSOperator', 'Operator')
link('TSNamespace', 'TSType')
link('TSFloat', 'Number')
link('TSConditional', 'Conditional')
link('TSKeyword', 'Keyword')
link('TSConstant', 'Constant')
link('TSType', 'Type')
link('TelescopeNormal', 'Normal')
link('TSComment', 'Comment')
link('NonText', 'Comment')