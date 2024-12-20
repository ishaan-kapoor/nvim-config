vim.cmd[[highlight clear]]
vim.g.colors_name = 'otakon-contrast'
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

local Color8 = '#b1a6ca'
local Color11 = '#4a4452'
local Color1 = '#9eb2d9'
local Color14 = '#847384'
local Color3 = '#cacbdd'
local Color9 = '#171417'
local Color7 = '#ffffff'
local Color4 = '#e484b2'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color12 = '#4e434e'
local Color10 = '#f9f3f9'
local Color2 = '#f6e6eb'
local Color0 = '#515166'
local Color13 = '#221d22'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color9, Color10, nil)
highlight('Pmenu', Color9, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color9, Color10, nil)
highlight('Normal', Color9, Color10, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSConstant', 'Constant')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSFuncMacro', 'Macro')
link('TSConditional', 'Conditional')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSField', 'Constant')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('TSString', 'String')
link('TSLabel', 'Type')
link('TSNumber', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Conditional', 'Operator')
link('TSRepeat', 'Repeat')
link('Folded', 'Comment')
link('TSType', 'Type')
link('TelescopeNormal', 'Normal')
link('TSParameter', 'Constant')
link('TSComment', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSNamespace', 'TSType')
link('TSTag', 'MyTag')
