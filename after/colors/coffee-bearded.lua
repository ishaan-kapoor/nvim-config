vim.cmd[[highlight clear]]
vim.g.colors_name = 'coffee-bearded'
-- Colorscheme generated by https://github.com/arcticlimer/djanho

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color16 = '#462827'
local Color7 = '#9DCC57'
local Color2 = '#f24343'
local Color8 = '#9991F1'
local Color12 = '#231f1e'
local Color14 = '#292423'
local Color18 = '#423734'
local Color15 = '#363a28'
local Color11 = '#968783'
local Color19 = '#F09177'
local Color4 = '#f7d979'
local Color10 = '#ffa777'
local Color3 = '#6EDDD6'
local Color6 = '#3ceaa8'
local Color1 = '#564642'
local Color0 = '#7E9E2D'
local Color13 = '#ceb5b0'
local Color17 = '#5a3f38'
local Color9 = '#f77a6a'
local Color5 = '#675a58'

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
highlight('WildMenu', Color14, Color13, nil)
highlight('Pmenu', Color14, Color13, nil)
highlight('PmenuSel', Color13, Color14, nil)
highlight('PmenuThumb', Color14, Color13, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color14, Color13, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color14, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color12, Color1, nil)
highlight('TabLineSel', Color19, Color14, nil)
highlight('TabLineFill', Color12, Color1, nil)
highlight('TSPunctDelimiter', nil, Color13, nil)

link('TSComment', 'Comment')
link('Macro', 'Function')
link('TSPunctBracket', 'MyTag')
link('TSProperty', 'TSField')
link('TSFuncMacro', 'Macro')
link('Whitespace', 'Comment')
link('TSOperator', 'Operator')
link('TSNamespace', 'TSType')
link('TSParameter', 'Constant')
link('TSField', 'Constant')
link('TSType', 'Type')
link('TSFloat', 'Number')
link('TSString', 'String')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('TSRepeat', 'Repeat')
link('TSFunction', 'Function')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('Repeat', 'Conditional')
link('TSTag', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSNumber', 'Number')
link('Operator', 'Keyword')