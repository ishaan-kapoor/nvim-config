vim.cmd[[highlight clear]]
vim.g.colors_name = 'carbonight-contrast'
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

local Color4 = '#eeeeee'
local Color0 = '#423f3d'
local Color2 = '#b0b0b0'
local Color1 = '#ffffff'
local Color10 = '#333333'
local Color8 = '#000000'
local Color3 = '#8c8c8c'
local Color7 = '#c4c4c4'
local Color6 = '#cf433e'
local Color5 = '#664e4d'
local Color9 = '#2e2e2e'
local Color11 = '#0a0a0a'
local Color12 = '#666666'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color8, Color7, nil)
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
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color1, nil)

link('TSOperator', 'Operator')
link('TelescopeNormal', 'Normal')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('TSField', 'Constant')
link('TSNamespace', 'TSType')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSTagDelimiter', 'Type')
link('Macro', 'Function')
link('TSType', 'Type')
link('Operator', 'Keyword')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('Folded', 'Comment')
link('TSFunction', 'Function')
link('TSString', 'String')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSProperty', 'TSField')
link('TSConstant', 'Constant')
link('Whitespace', 'Comment')
link('TSNumber', 'Number')
link('TSConditional', 'Conditional')
link('TSComment', 'Comment')
link('TSRepeat', 'Repeat')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFuncMacro', 'Macro')
link('Conditional', 'Operator')
link('TSKeyword', 'Keyword')
