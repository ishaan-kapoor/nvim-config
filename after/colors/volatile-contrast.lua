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

local Color9 = '#c0ccdb'
local Color7 = '#cf433e'
local Color0 = '#76818e'
local Color4 = '#ee9c3d'
local Color8 = '#141619'
local Color13 = '#1d2024'
local Color5 = '#ffffff'
local Color3 = '#568769'
local Color11 = '#414852'
local Color2 = '#db5a51'
local Color6 = '#664e4d'
local Color10 = '#2a3b33'
local Color12 = '#6f7a8a'
local Color1 = '#dac25c'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color5, Color4, nil)
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
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSKeyword', 'Keyword')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSTag', 'MyTag')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('Repeat', 'Conditional')
link('TSNamespace', 'TSType')
link('TSConditional', 'Conditional')
link('TSFuncMacro', 'Macro')
link('Operator', 'Keyword')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('TSComment', 'Comment')
link('TSField', 'Constant')
link('TSConstant', 'Constant')
link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSProperty', 'TSField')
link('NonText', 'Comment')
link('TSFloat', 'Number')
link('Macro', 'Function')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFunction', 'Function')
link('TSNumber', 'Number')
link('TSType', 'Type')