vim.cmd[[highlight clear]]
vim.g.colors_name = 'waste-light'
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

local Color7 = '#cf433e'
local Color8 = '#43bdb2'
local Color2 = '#a9b553'
local Color10 = '#444444'
local Color11 = '#d9f1ef'
local Color1 = '#c5d671'
local Color4 = '#f7a8a5'
local Color9 = '#ffffff'
local Color6 = '#664e4d'
local Color13 = '#f5f5f5'
local Color0 = '#aaaaaa'
local Color12 = '#cccccc'
local Color3 = '#95ad97'
local Color5 = '#d3b298'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color9, Color8, nil)
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
highlight('TabLine', Color13, Color0, nil)
highlight('TabLineSel', Color10, nil, nil)
highlight('TabLineFill', Color13, Color0, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSFunction', 'Function')
link('Macro', 'Function')
link('TSFloat', 'Number')
link('Whitespace', 'Comment')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSType', 'Type')
link('TSConstant', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSParameter', 'Constant')
link('TSOperator', 'Operator')
link('TSFuncMacro', 'Macro')
link('TSLabel', 'Type')
link('TelescopeNormal', 'Normal')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('TSNumber', 'Number')
link('TSComment', 'Comment')
link('TSField', 'Constant')
link('NonText', 'Comment')
link('TSString', 'String')
link('TSRepeat', 'Repeat')
link('TSNamespace', 'TSType')
link('TSParameterReference', 'TSParameter')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Operator', 'Keyword')
link('Conditional', 'Operator')
link('Repeat', 'Conditional')
link('TSConditional', 'Conditional')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
