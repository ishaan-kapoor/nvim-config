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

local Color8 = '#ffffff'
local Color10 = '#f0f0f0'
local Color1 = '#3bc7b8'
local Color7 = '#ff4e50'
local Color13 = '#e6e6e6'
local Color2 = '#ce1836'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color9 = '#333333'
local Color11 = '#f3cfd0'
local Color14 = '#999999'
local Color0 = '#777777'
local Color4 = '#c3cb4c'
local Color3 = '#edb92e'
local Color12 = '#bdbdbd'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color1, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color1, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color8, Color7, nil)
highlight('WildMenu', Color10, Color9, nil)
highlight('Pmenu', Color10, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color10, Color9, nil)
highlight('Normal', Color10, Color9, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSFunction', 'Function')
link('Whitespace', 'Comment')
link('TSNumber', 'Number')
link('TSConstant', 'Constant')
link('Operator', 'Keyword')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Macro', 'Function')
link('CursorLineNr', 'Identifier')
link('TSOperator', 'Operator')
link('NonText', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSPunctBracket', 'MyTag')
link('Repeat', 'Conditional')
link('TSComment', 'Comment')
link('TSType', 'Type')
link('TSFuncMacro', 'Macro')
link('TSFloat', 'Number')
link('TSLabel', 'Type')
link('TSString', 'String')
link('TSField', 'Constant')
link('TSKeyword', 'Keyword')
link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSConditional', 'Conditional')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('TelescopeNormal', 'Normal')