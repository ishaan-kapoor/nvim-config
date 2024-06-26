vim.cmd[[highlight clear]]
vim.g.colors_name = 'allure-contrast'
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

local Color0 = '#76818e'
local Color2 = '#cea36f'
local Color10 = '#2e4843'
local Color3 = '#e4d294'
local Color1 = '#cec86f'
local Color4 = '#5da892'
local Color12 = '#737d8c'
local Color5 = '#ffffff'
local Color6 = '#664e4d'
local Color7 = '#cf433e'
local Color8 = '#c0ccdb'
local Color11 = '#454b54'
local Color13 = '#202327'
local Color9 = '#17191c'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color5, Color4, nil)
highlight('WildMenu', Color9, Color8, nil)
highlight('Pmenu', Color9, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color9, Color8, nil)
highlight('Normal', Color9, Color8, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSConstant', 'Constant')
link('TSFloat', 'Number')
link('Whitespace', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Repeat', 'Conditional')
link('TSLabel', 'Type')
link('TSRepeat', 'Repeat')
link('TSNamespace', 'TSType')
link('TSProperty', 'TSField')
link('TSNumber', 'Number')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSString', 'String')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSParameter', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TSFunction', 'Function')
link('TelescopeNormal', 'Normal')
link('Conditional', 'Operator')
link('NonText', 'Comment')
link('TSType', 'Type')
link('TSConditional', 'Conditional')
link('TSFuncMacro', 'Macro')
link('Macro', 'Function')
link('Folded', 'Comment')
