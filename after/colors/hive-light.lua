vim.cmd[[highlight clear]]
vim.g.colors_name = 'hive-light'
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

local Color2 = '#83ba7c'
local Color3 = '#6e81a0'
local Color5 = '#2d3142'
local Color10 = '#cccccc'
local Color12 = '#f5f5f5'
local Color7 = '#cf433e'
local Color6 = '#664e4d'
local Color9 = '#e4f0f1'
local Color8 = '#ffffff'
local Color11 = '#8b92b0'
local Color0 = '#9b9fb2'
local Color1 = '#dbc583'
local Color4 = '#7cb8ba'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
highlight('WildMenu', Color8, Color5, nil)
highlight('Pmenu', Color8, Color5, nil)
highlight('PmenuSel', Color5, nil, nil)
highlight('PmenuThumb', Color8, Color5, nil)
highlight('Normal', Color8, Color5, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineSel', Color5, nil, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color5, nil)

link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSFunction', 'Function')
link('TSConditional', 'Conditional')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('Folded', 'Comment')
link('Conditional', 'Operator')
link('TSComment', 'Comment')
link('TSRepeat', 'Repeat')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('TSNumber', 'Number')
link('Whitespace', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('Repeat', 'Conditional')
link('TSTagDelimiter', 'Type')
link('Macro', 'Function')
link('TSString', 'String')
link('TSType', 'Type')
link('TSLabel', 'Type')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
