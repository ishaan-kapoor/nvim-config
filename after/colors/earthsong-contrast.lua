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

local Color0 = '#7a7267'
local Color8 = '#12100f'
local Color11 = '#4a413d'
local Color1 = '#f8bb39'
local Color9 = '#ebd1b7'
local Color13 = '#1d1a18'
local Color12 = '#81736c'
local Color6 = '#ffffff'
local Color3 = '#60a365'
local Color4 = '#664e4d'
local Color2 = '#db784d'
local Color7 = '#95cc5e'
local Color10 = '#553223'
local Color5 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
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

link('Whitespace', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('Macro', 'Function')
link('TSType', 'Type')
link('NonText', 'Comment')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('TSRepeat', 'Repeat')
link('TSComment', 'Comment')
link('TSParameter', 'Constant')
link('TSFloat', 'Number')
link('Repeat', 'Conditional')
link('TSPunctBracket', 'MyTag')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSConstant', 'Constant')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('TSNamespace', 'TSType')
link('TSFuncMacro', 'Macro')
link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TelescopeNormal', 'Normal')
link('TSNumber', 'Number')