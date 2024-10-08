vim.cmd[[highlight clear]]
vim.g.colors_name = 'scorch-light'
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

local Color10 = '#f2eded'
local Color14 = '#e9e1e1'
local Color12 = '#e7cbcc'
local Color3 = '#bd4549'
local Color5 = '#cf9e51'
local Color13 = '#c7b2b2'
local Color8 = '#ffffff'
local Color7 = '#cf433e'
local Color11 = '#514242'
local Color6 = '#664e4d'
local Color1 = '#a58163'
local Color15 = '#b8a7a7'
local Color2 = '#cc8f5d'
local Color0 = '#63383c'
local Color4 = '#c6bb57'
local Color9 = '#d39452'

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
highlight('TabLineSel', Color11, nil, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('TSConditional', 'Conditional')
link('Conditional', 'Operator')
link('TSType', 'Type')
link('TSString', 'String')
link('TSFuncMacro', 'Macro')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSOperator', 'Operator')
link('TSNumber', 'Number')
link('TSRepeat', 'Repeat')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('NonText', 'Comment')
link('TSFloat', 'Number')
link('TSProperty', 'TSField')
link('Repeat', 'Conditional')
link('TSNamespace', 'TSType')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSPunctBracket', 'MyTag')
link('TSFunction', 'Function')
