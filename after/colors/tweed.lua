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

local Color7 = '#ffffff'
local Color1 = '#e7a84b'
local Color6 = '#cf433e'
local Color8 = '#777f93'
local Color9 = '#3b3f4c'
local Color11 = '#686f85'
local Color12 = '#9fa4b4'
local Color13 = '#444957'
local Color10 = '#6d4b46'
local Color0 = '#4d5363'
local Color3 = '#e2975f'
local Color4 = '#cab696'
local Color5 = '#664e4d'
local Color2 = '#5e9989'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color9, Color7, nil)
highlight('Pmenu', Color9, Color7, nil)
highlight('PmenuSel', Color7, nil, nil)
highlight('PmenuThumb', Color9, Color7, nil)
highlight('Normal', Color9, Color7, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color7, nil)

link('TSString', 'String')
link('Whitespace', 'Comment')
link('TSLabel', 'Type')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSComment', 'Comment')
link('Conditional', 'Operator')
link('TSFuncMacro', 'Macro')
link('TelescopeNormal', 'Normal')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Folded', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('TSParameterReference', 'TSParameter')
link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSType', 'Type')
link('Repeat', 'Conditional')
link('TSParameter', 'Constant')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('TSField', 'Constant')
link('TSKeyword', 'Keyword')
link('TSOperator', 'Operator')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSTagDelimiter', 'Type')
link('TSNumber', 'Number')