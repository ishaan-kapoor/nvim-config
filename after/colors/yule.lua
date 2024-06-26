vim.cmd[[highlight clear]]
vim.g.colors_name = 'yule'
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

local Color5 = '#cf433e'
local Color3 = '#39b81f'
local Color4 = '#664e4d'
local Color9 = '#642c2a'
local Color10 = '#605e57'
local Color8 = '#ede0ce'
local Color7 = '#2b2a27'
local Color11 = '#94928a'
local Color0 = '#7a7267'
local Color1 = '#ebb626'
local Color12 = '#363431'
local Color6 = '#ffffff'
local Color2 = '#d63131'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color3, nil)
highlight('WildMenu', Color7, Color8, nil)
highlight('Pmenu', Color7, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color7, Color8, nil)
highlight('Normal', Color7, Color8, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('CursorLineNr', 'Identifier')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
link('TSFunction', 'Function')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSFuncMacro', 'Macro')
link('TSConstant', 'Constant')
link('TSField', 'Constant')
link('TSNumber', 'Number')
link('TSLabel', 'Type')
link('TSRepeat', 'Repeat')
link('Whitespace', 'Comment')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Repeat', 'Conditional')
link('TSTagDelimiter', 'Type')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('NonText', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSParameter', 'Constant')
link('TSTag', 'MyTag')
