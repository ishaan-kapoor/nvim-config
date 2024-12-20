vim.cmd[[highlight clear]]
vim.g.colors_name = 'lichen'
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

local Color4 = '#246c82'
local Color8 = '#ffffff'
local Color10 = '#9cadbc'
local Color0 = '#405b75'
local Color5 = '#1a9d6b'
local Color13 = '#3e5971'
local Color12 = '#1a4d43'
local Color14 = '#212f3c'
local Color7 = '#cf433e'
local Color3 = '#9ce878'
local Color6 = '#664e4d'
local Color1 = '#c5d671'
local Color2 = '#e4f279'
local Color9 = '#249388'
local Color11 = '#1a252f'
local Color15 = '#698cac'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color9, nil)
highlight('WildMenu', Color11, Color10, nil)
highlight('Pmenu', Color11, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color11, Color10, nil)
highlight('Normal', Color11, Color10, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color11, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSTagDelimiter', 'Type')
link('TSOperator', 'Operator')
link('TSConditional', 'Conditional')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('NonText', 'Comment')
link('TSComment', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Operator', 'Keyword')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('TSFunction', 'Function')
link('TSRepeat', 'Repeat')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('TSString', 'String')
link('TSNumber', 'Number')
link('Macro', 'Function')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('TSProperty', 'TSField')
link('Conditional', 'Operator')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
