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

local Color0 = '#454370'
local Color4 = '#908cd8'
local Color8 = '#181726'
local Color3 = '#e4b363'
local Color5 = '#664e4d'
local Color9 = '#5f3039'
local Color10 = '#403d66'
local Color12 = '#201f33'
local Color2 = '#ef6461'
local Color7 = '#ffffff'
local Color11 = '#6a66a3'
local Color1 = '#d2c9ef'
local Color6 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
highlight('WildMenu', Color8, Color1, nil)
highlight('Pmenu', Color8, Color1, nil)
highlight('PmenuSel', Color1, nil, nil)
highlight('PmenuThumb', Color8, Color1, nil)
highlight('Normal', Color8, Color1, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color1, nil)

link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSString', 'String')
link('Folded', 'Comment')
link('NonText', 'Comment')
link('Whitespace', 'Comment')
link('Conditional', 'Operator')
link('TSFuncMacro', 'Macro')
link('TSOperator', 'Operator')
link('TSLabel', 'Type')
link('TSNumber', 'Number')
link('Macro', 'Function')
link('Repeat', 'Conditional')
link('TSConstant', 'Constant')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('TSFunction', 'Function')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Operator', 'Keyword')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TSParameterReference', 'TSParameter')