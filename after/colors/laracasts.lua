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

local Color4 = '#00b1b3'
local Color1 = '#98d5d6'
local Color2 = '#c68369'
local Color13 = '#565e68'
local Color9 = '#c0ccdb'
local Color11 = '#7d8793'
local Color12 = '#b5bac1'
local Color0 = '#76818e'
local Color10 = '#337379'
local Color3 = '#ef6733'
local Color7 = '#cf433e'
local Color8 = '#4d545d'
local Color5 = '#ffffff'
local Color6 = '#664e4d'

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

link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('TSKeyword', 'Keyword')
link('TSRepeat', 'Repeat')
link('Macro', 'Function')
link('TSProperty', 'TSField')
link('TSType', 'Type')
link('TSParameter', 'Constant')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSString', 'String')
link('TSOperator', 'Operator')
link('TSTagDelimiter', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSTag', 'MyTag')
link('CursorLineNr', 'Identifier')
link('TSFunction', 'Function')
link('TSField', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNumber', 'Number')
link('Folded', 'Comment')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Conditional', 'Operator')
link('Whitespace', 'Comment')
link('NonText', 'Comment')
link('TelescopeNormal', 'Normal')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')