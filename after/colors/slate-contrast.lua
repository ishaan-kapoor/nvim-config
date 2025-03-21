vim.cmd[[highlight clear]]
vim.g.colors_name = 'slate-contrast'
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

local Color2 = '#89a7b1'
local Color9 = '#ebebf4'
local Color11 = '#474757'
local Color8 = '#19191f'
local Color6 = '#cf433e'
local Color0 = '#515166'
local Color5 = '#664e4d'
local Color3 = '#566981'
local Color1 = '#9eb2d9'
local Color7 = '#ffffff'
local Color10 = '#2d333f'
local Color12 = '#22222a'
local Color13 = '#75758f'
local Color4 = '#cbdad5'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
highlight('WildMenu', Color8, Color9, nil)
highlight('Pmenu', Color8, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color8, Color9, nil)
highlight('Normal', Color8, Color9, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color12, Color13, nil)
highlight('TabLineFill', Color12, Color13, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSLabel', 'Type')
link('TSOperator', 'Operator')
link('TSNumber', 'Number')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSFloat', 'Number')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('TSString', 'String')
link('TSConditional', 'Conditional')
link('Whitespace', 'Comment')
link('TSFunction', 'Function')
link('TSProperty', 'TSField')
link('TSKeyword', 'Keyword')
link('TSRepeat', 'Repeat')
link('TSField', 'Constant')
link('TSTag', 'MyTag')
link('TSParameterReference', 'TSParameter')
link('Macro', 'Function')
link('TSType', 'Type')
link('TSConstant', 'Constant')
link('TelescopeNormal', 'Normal')
link('TSParameter', 'Constant')
link('Repeat', 'Conditional')
link('TSTagDelimiter', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Conditional', 'Operator')
link('Operator', 'Keyword')
link('TSFuncMacro', 'Macro')
