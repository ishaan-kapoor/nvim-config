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

local Color14 = '#101d30'
local Color4 = '#e14d61'
local Color15 = '#3e71ba'
local Color0 = '#2c4c7c'
local Color2 = '#3ea7bc'
local Color10 = '#0b1421'
local Color13 = '#24426d'
local Color3 = '#247888'
local Color1 = '#f63a4e'
local Color6 = '#664e4d'
local Color5 = '#e6ce9f'
local Color11 = '#b0cbf4'
local Color8 = '#ffffff'
local Color9 = '#98baa6'
local Color12 = '#3a4b4d'
local Color7 = '#cf433e'

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

link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('TSNamespace', 'TSType')
link('TSProperty', 'TSField')
link('TSParameter', 'Constant')
link('TSString', 'String')
link('TSConditional', 'Conditional')
link('Macro', 'Function')
link('Folded', 'Comment')
link('NonText', 'Comment')
link('TSComment', 'Comment')
link('TSNumber', 'Number')
link('Operator', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('CursorLineNr', 'Identifier')
link('TSField', 'Constant')
link('TSTag', 'MyTag')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSFloat', 'Number')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('TelescopeNormal', 'Normal')
link('TSRepeat', 'Repeat')
link('TSOperator', 'Operator')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')