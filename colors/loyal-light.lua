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

local Color7 = '#3cbbb1'
local Color1 = '#e5c71b'
local Color5 = '#664e4d'
local Color12 = '#a6a3b6'
local Color13 = '#f5f5f5'
local Color8 = '#ffffff'
local Color3 = '#9484d6'
local Color6 = '#cf433e'
local Color9 = '#413e4f'
local Color10 = '#d8f1ef'
local Color11 = '#cccccc'
local Color0 = '#9d96bc'
local Color2 = '#ee4266'
local Color4 = '#b3adba'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color8, Color7, nil)
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
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSComment', 'Comment')
link('TSParameter', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSConstant', 'Constant')
link('Operator', 'Keyword')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('TSKeyword', 'Keyword')
link('TSLabel', 'Type')
link('TSType', 'Type')
link('TSString', 'String')
link('TSRepeat', 'Repeat')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('TSFuncMacro', 'Macro')
link('Whitespace', 'Comment')
link('TSNamespace', 'TSType')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Folded', 'Comment')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('TSOperator', 'Operator')
link('TSFloat', 'Number')
link('TSPunctBracket', 'MyTag')
link('Repeat', 'Conditional')
link('TSTag', 'MyTag')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSField', 'Constant')
link('TSNumber', 'Number')