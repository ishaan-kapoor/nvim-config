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

local Color12 = '#40565e'
local Color2 = '#3ea7bc'
local Color7 = '#cf433e'
local Color11 = '#b0cbf4'
local Color3 = '#247888'
local Color1 = '#f63a4e'
local Color9 = '#98baa6'
local Color8 = '#ffffff'
local Color14 = '#1a2d4a'
local Color15 = '#5883c4'
local Color4 = '#e14d61'
local Color0 = '#2c4c7c'
local Color5 = '#e6ce9f'
local Color13 = '#305286'
local Color6 = '#664e4d'
local Color10 = '#15243b'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color9, nil)
highlight('WildMenu', Color10, Color11, nil)
highlight('Pmenu', Color10, Color11, nil)
highlight('PmenuSel', Color11, nil, nil)
highlight('PmenuThumb', Color10, Color11, nil)
highlight('Normal', Color10, Color11, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TSNumber', 'Number')
link('TSKeyword', 'Keyword')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('Folded', 'Comment')
link('Whitespace', 'Comment')
link('TSFloat', 'Number')
link('CursorLineNr', 'Identifier')
link('TSFunction', 'Function')
link('Macro', 'Function')
link('TSType', 'Type')
link('TSFuncMacro', 'Macro')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('TSOperator', 'Operator')
link('NonText', 'Comment')
link('Operator', 'Keyword')
link('TSConditional', 'Conditional')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('TSString', 'String')
link('TSProperty', 'TSField')
link('TSConstant', 'Constant')
link('TSComment', 'Comment')